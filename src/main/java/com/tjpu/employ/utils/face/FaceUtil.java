package com.tjpu.employ.utils.face;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FaceUtil {
    public static String faceDetect(String accessToken) {
        // 请求url
        String url = "https://aip.baidubce.com/rest/2.0/face/v3/detect";
        try {
            String path = "C:\\Users\\23208\\Pictures\\百度图片\\人脸.jpg";
            String img = Base64Util.encode(FileUtil.readFileByBytes(path));


            Map<String, Object> map = new HashMap<>();
            map.put("image", img);
            map.put(url, "age,facetype,beauty");
            map.put("image_type", "BASE64");

            String param = GsonUtils.toJson(map);

            // 注意这里仅为了简化编码每一次请求都去获取access_token，线上环境access_token有过期时间， 客户端可自行缓存，过期后重新获取。


            String result = HttpUtil.post(url, accessToken, "application/json", param);
            System.out.println(result);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static String faceMatch(String accessToken) {
        // 请求url
        String url = "https://aip.baidubce.com/rest/2.0/face/v3/match";
        try {
            String path="C:\\Users\\23208\\Pictures\\百度图片\\人脸.jpg";
            String img=Base64Util.encode(FileUtil.readFileByBytes(path));
            System.out.println(img);
            String path2 = "C:\\Users\\23208\\Pictures\\百度图片\\人脸识别2.jpg";
            String img2 = Base64Util.encode(FileUtil.readFileByBytes(path2));

            Map<String, Object> map1 = new HashMap<>();
            map1.put("image", img2);
            map1.put("image_type", "BASE64");
            Map<String, Object> map2 = new HashMap<>();
            map2.put("image", img);
            map2.put("image_type", "BASE64");
            List<Map<String, Object>> maps=new ArrayList<Map<String,Object>>();
            maps.add(map1);
            maps.add(map2);
            String param = GsonUtils.toJson(maps);


            String result = HttpUtil.post(url, accessToken, "application/json", param);

            System.out.println(result);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static String faceMatch(String accessToken,String img1,String img2){
        // 请求url
        String url = "https://aip.baidubce.com/rest/2.0/face/v3/match";
        try {
            Map<String, Object> map1 = new HashMap<>();
            map1.put("image", img2);
            map1.put("image_type", "BASE64");
            Map<String, Object> map2 = new HashMap<>();
            map2.put("image", img1);
            map2.put("image_type", "BASE64");
            List<Map<String, Object>> maps=new ArrayList<Map<String,Object>>();
            maps.add(map1);
            maps.add(map2);
            String param = GsonUtils.toJson(maps);

            String result = HttpUtil.post(url, accessToken, "application/json", param);

            System.out.println(result);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
