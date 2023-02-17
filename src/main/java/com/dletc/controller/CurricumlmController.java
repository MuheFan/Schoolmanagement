package com.dletc.controller;

import com.dletc.entity.Curriculm;
import com.dletc.entity.Teacher;
import com.dletc.entity.User;
import com.dletc.service.CurriculmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CurricumlmController {

    @Autowired
    CurriculmService service;

    @GetMapping("/findAllCurriculm")
    @ResponseBody
    public List<Curriculm> findAllCurriculm() {
        List<Curriculm> all = service.findAllCurriculm();
        return all;
    }


    @PostMapping("/addCurriculm")
    public String addCurriculm(Curriculm curriculm) {

        int i = service.addCurriculm(curriculm);

        if (i == 1) {
            return "/curriculum";
        } else {
            return "/curriculum";
        }
    }

    @GetMapping("/selectAllByCid")
    public ModelAndView selectAllByCid(@RequestParam("cid") Integer cid){
        Curriculm curriculm = service.selectAllByCid(cid);
        ModelAndView mdv = new ModelAndView();
        mdv.addObject("curriculm",curriculm);
        mdv.setViewName("/UpdateDetails");
        return mdv;
    }


    @GetMapping("/selectAllByid")
    @ResponseBody
    public Curriculm selectAllByid(@RequestParam("cid") Integer cid){
        Curriculm curriculm = service.selectAllByCid(cid);

        return curriculm;
    }



    @PostMapping("/UpdateCurriculm")
    public String UpdateCurriculm(Curriculm curriculm){

        int i = service.UpdateCurriculm(curriculm);
        if (i == 1) {
            return "/curriculum";
        } else {
            return "/curriculum";
        }
    }
    @GetMapping("/delCurriculmByCid")
    public String delCurriculmByCid(Integer cid){
        int i = service.delCurriculmByCid(cid);
        if (i == 1) {
            return "/curriculum";
        } else {
            return "/curriculum";
        }
    }
    @PostMapping("/findCurriculmByName")
    @ResponseBody
    public List<Teacher> findCurriculmByName(@RequestParam String cname){
        return   service.findCurriculmByName(cname);
    }

    @GetMapping("/findCuriculmByTeacherId")
    @ResponseBody
    public List<Curriculm> findCuriculmByTeacherId(HttpServletRequest request ) {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        List<Curriculm> all = service.findCuriculmByTeacherId(user.getUaccounts());
        return all;
    }

}
