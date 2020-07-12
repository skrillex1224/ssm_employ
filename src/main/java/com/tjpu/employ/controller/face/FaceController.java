package com.tjpu.employ.controller.face;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.tjpu.employ.service.admin.AdminService;
import com.tjpu.employ.utils.face.Base64Util;
import com.tjpu.employ.utils.face.ClientToken;
import com.tjpu.employ.utils.face.FaceUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class FaceController {
    @Autowired
    AdminService adminService;

    private static  String token = "24.d25e159a53cfa029e6b1495d01c4b631.2592000.1596593511.282335-21147152";

    @RequestMapping("showToken")
    @ResponseBody
    public String func1(){
        String ak = "ZU4bD1cID90UFbZ8Ry1mRaC1";
        String sk = "oSBvb2mgWAZa70j0RkHiZc4Hw4VgnQKt";
        token = ClientToken.getAuth(ak, sk);
        return token;
    }

    //跳转页面
    @RequestMapping("toFaceDetect")
    public String toFaceDetect(){
        return "face/faceDetect";
    }

    @RequestMapping("faceMatch")
    @ResponseBody
    public String func3(){
        String result = FaceUtil.faceMatch(token);
        JSONObject jsonObject = JSON.parseObject(result);
        System.out.println(jsonObject.getJSONObject("result").getString("score"));
        return result;
    }


    @RequestMapping("getPicture")
    @ResponseBody
    public Double func4(String imgData){
        String img1 = imgData.substring(22);
        List<byte[]> faces = adminService.selectAllFace();
        System.out.println(faces);
        for (int i = 0; i < faces.size(); i++) {
            String img2 = Base64Util.encode(faces.get(i));
            String result = FaceUtil.faceMatch(token, img1, img2);
            JSONObject jsonObject = JSON.parseObject(result);
            double score = Double.parseDouble(jsonObject.getJSONObject("result").getString("score"));
            if (score > 85){
                return score;
            }
        }
        return null;
    }
}
