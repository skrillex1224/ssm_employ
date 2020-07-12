<%--
  Created by IntelliJ IDEA.
  User: 23208
  Date: 2020/7/11
  Time: 23:05.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/BUI/bootstrap4.5/css/bootstrap.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/BUI/js/jquery-3.3.1.js"></script>
</head>
<body>
    <div class="container">
        <h1 style="text-align: center">AI人脸二次验证</h1>
        <span style="text-align: center;">
            <video id="video" width="1090px" height="500px" autoplay="autoplay"></video>
        </span>
        <br>
        <span style="width: 150px;display: none"><img id="imgTag" src=""></span>
        <br><br>
        <button onclick="openMedia()" class="btn btn-secondary" style="margin-left: 120px">开启摄像头</button>

        <span style="display: none"><canvas id="canvas" width="500px" height="500px"></canvas></span>

        <button class="btn btn-success" onclick="takePhoto()" style="margin-left: 250px">开始认证</button>

        <button onclick="closeMedia()" class="btn btn-warning" style="margin-left: 250px">关闭摄像头</button>

        <button style="display: none"><a href="getAllUsers" id="submitBtn">识别成功</a></button>
    </div>


<script>
    let mediaStreamTrack=null; // 视频对象(全局)
    let video ;
    function openMedia() {
        let constraints = {
            video: { width: 500, height: 500 },
            audio: false
        };
        //获得video摄像头
        video = document.getElementById('video');
        let promise = navigator.mediaDevices.getUserMedia(constraints);
        promise.then((mediaStream) => {
            // mediaStreamTrack = typeof mediaStream.stop === 'function' ? mediaStream : mediaStream.getTracks()[1];
            mediaStreamTrack=mediaStream.getVideoTracks()
            video.srcObject = mediaStream;
            video.play();
        });
    }

    // 拍照
    function takePhoto() {
        //获得Canvas对象
        let video = document.getElementById('video');
        let canvas = document.getElementById('canvas');
        let ctx = canvas.getContext('2d');
        ctx.drawImage(video, 0, 0, 500, 500);

        // toDataURL  ---  可传入'image/png'---默认, 'image/jpeg'
        let img = document.getElementById('canvas').toDataURL();
        // 这里的img就是得到的图片
        console.log('img-----', img);
        document.getElementById('imgTag').src=img;

        alert("正在验证，请勿离开");
        //上传

        $.ajax({
            url:"<%=request.getContextPath()%>/getPicture"
            ,type:"POST"
            ,data:{"imgData":img}
            ,success:function(data){
                console.log(data);
                <%--//document.getElementById("submitBtn").href="getAllUsers?score=${data}";--%>
                if (data > 85){
                    alert("恭喜您通过人脸认证，正在为您全速登陆中...");
                    document.getElementById("submitBtn").click();
                } else {
                    alert("对不起，人脸认证失败，请刷新再试");
                }
                document.gauges.forEach(function(gauge) {
                    gauge.value =data.data
                });
            }
            ,error:function(){
                console.log("服务端异常！");
            }
        });
    }

    // 关闭摄像头
    function closeMedia() {
        let stream = document.getElementById('video').srcObject;
        let tracks = stream.getTracks();

        tracks.forEach(function(track) {
            track.stop();
        });

        document.getElementById('video').srcObject = null;
    }
</script>
</body>
</html>
