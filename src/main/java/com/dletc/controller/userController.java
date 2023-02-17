package com.dletc.controller;


import com.dletc.entity.User;
import com.dletc.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping
public class userController {

    @Autowired
    public UserService service;


@PostMapping("/postUser")
    public String postUser(HttpServletRequest request){
    HttpSession session = request.getSession();

    String uaccounts = request.getParameter("uaccounts");

    String upassword = request.getParameter("upassword");

    User user = service.verifyAP(uaccounts, upassword);
    if (user==null){
        request.setAttribute("msg","您输入的帐号或密码错误,请从新输入");
        return "/page_login";
    }else  if(user.getUtype().equals("管理")){
        session.setAttribute("user",user);
        return "/curriculum";
    }else if(user.getUtype().equals("老师")){
        session.setAttribute("user",user);
        return "/ITeachCourses";
    }else {
        session.setAttribute("user",user);
        return "/choiceCurriculum";
    }


}

@GetMapping("/FindUserByname")
@ResponseBody
  public String FindUserByname(@RequestParam String uaccounts){
    User user = service.FindUserByname(uaccounts);
    if (user==null){
        return "1";
    }else {
        return "2";
    }
}
    @PostMapping("/UpdateUser")
    @ResponseBody
  public int UpdateUser(@RequestParam Integer uaccounts,@RequestParam String upassword){
      User user = new User();
      user.setUaccounts(uaccounts);
      user.setUpassword(upassword);
      int i = service.UpdateUser(user);
      return i;
  }
    @PostMapping("/UpdateUserImg")
    @ResponseBody
    public int UpdateUserImg(@RequestParam Integer uaccounts,@RequestParam String upassword,@RequestParam String img,HttpServletRequest request){

        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("user");
        user.setUaccounts(uaccounts);
        user.setUpassword(upassword);
        user.setImg(img);
        System.out.println(user);
        int i = service.UpdateUserUpImg(user);
        return i;
    }



    @PostMapping ("/files")
    @ResponseBody
    public String uploadFile(@RequestParam CommonsMultipartFile file, HttpServletRequest request){
        /**
         * 实际开发中上传文件会在一个ftp服务器上 数据上传以后实际在表中存放的是文件路径
         * 模拟一个文件夹作为文件存放的地方
         *
         * target 文件夹 是代码编译后的内容
         * 现在可以将上传文件放在target下
         */
        if (file!=null){
//            获取本地存放文件的路径
            String realPath = request.getServletContext().getRealPath("/upload");


            //获取上传文件名称
            String originalFilename = file.getOriginalFilename();


//            获取文件类型
            String fileTpye= originalFilename.substring(originalFilename.lastIndexOf("."));

            if (fileTpye.equals(".jpg")||fileTpye.equals(".png")||fileTpye.equals(".jpeg")||fileTpye.equals(".gif")) {


//          用时间跟尾部 和文件类型 拼写 形成新的名字
                String newName = new Date().getTime() + "" + fileTpye;
                request.setAttribute("fileName", newName);
                request.setAttribute("filePath", request.getContextPath() + "/upload/" + newName);

                File uploadFile = new File(realPath, newName);
//           write 是导入pom 文件新加的依赖
                try {
                    file.getFileItem().write(uploadFile);
//                返回新的页面
                    return request.getContextPath()+"upload/"+newName;
                } catch (Exception e) {
                    e.printStackTrace();
                    return "/erro";
                }
            }else {
                return "erro";
            }


        }else {
            return "erro";
        }
    }

}
