package com.dletc.controller;

import com.dletc.entity.Achievement;
import com.dletc.entity.Curriculm;
import com.dletc.entity.User;
import com.dletc.service.AchievementService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @BelongsProject(项目名称): CampusMvc_Project
 * @BelongsPackage (当前包的名称): com.dletc.controller
 * @Author(作者): YangFei
 * @CreateTime(创建时间): 2023-02-16  12:42
 * @Description(功能描述):
 * @Version(版本信息): 1.0
 */
@Controller
public class AchievementController {

    @Autowired
    public AchievementService service;

    @GetMapping("/findfraction")
    @ResponseBody
    public ModelAndView findfraction(@RequestParam Integer cid, HttpServletRequest request){

        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("user");
        Integer tid = user.getUaccounts();
        List<Achievement> findfraction = service.findfraction(tid,cid);
        ModelAndView mdv = new ModelAndView();
        mdv.addObject("findfraction",findfraction);
        mdv.setViewName("/Score");
        return mdv;
    }
    @GetMapping("/findAchievementById")
   public  ModelAndView findAchievementById(@RequestParam  Integer id){
        Achievement findfraction = service.findfraction(id);
        ModelAndView mdv = new ModelAndView();
        mdv.addObject("findAchievementById",findfraction);
        mdv.setViewName("/marking");
        return mdv;
    }
        @PostMapping("/UpdateAchievementById")
    public ModelAndView UpdateAchievementById(Achievement achievement,HttpServletRequest request){
            System.out.println(achievement);
            int i = service.UpdateAchievementById(achievement);


            ModelAndView mdv = new ModelAndView();
            if (i==1){
                Achievement ach = service.findfraction(achievement.getAid());
                HttpSession session = request.getSession();
                User user =(User) session.getAttribute("user");
                List<Achievement> findfraction = service.findfraction(user.getUaccounts(),ach.getCurriculm().getCid());
                mdv.addObject("findfraction",findfraction);
                mdv.setViewName("/Score");
            }else {
                mdv.setViewName("/Score");
            }

            return mdv;
    }


    //     查询该学生所有未选择的课程
    @PostMapping("/NotselectCurriculm")
    @ResponseBody
    public  List<Curriculm> NotselectCurriculm(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("user");

        return service.NotselectCurriculm(user.getUaccounts());
    }

    //     查询该学生所有选择的课程
    @PostMapping("/selectCurriculm")
    @ResponseBody
    public  List<Curriculm> selectCurriculm(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("user");
        return service.selectCurriculm(user.getUaccounts());
    }

    //    学生选择课程
    @GetMapping("/insertAchie")
    public   String insertAchie(@RequestParam Integer cid,HttpServletRequest request){
        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("user");
         service.insertAchie(cid,user.getUaccounts());
        return "/Allcurriculum";

    }

    //   学生该退课
    @GetMapping("/deletAchie")
   public String deletAchie(@RequestParam Integer cid, HttpServletRequest request){
       HttpSession session = request.getSession();
       User user =(User) session.getAttribute("user");

       int i = service.deletAchie(cid, user.getUaccounts());
       return "/Allcurriculum";
   }

    //     查询学生已修的所有课程
    @PostMapping("/selectRepairedCurriculm")
    @ResponseBody
  public  List<Achievement> selectRepairedCurriculm(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("user");
        List<Achievement> achievements = service.selectRepairedCurriculm(user.getUaccounts());
        return achievements;
    }
}
