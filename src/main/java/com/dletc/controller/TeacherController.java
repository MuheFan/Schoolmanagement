package com.dletc.controller;


import com.dletc.entity.Teacher;
import com.dletc.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class TeacherController {
    @Autowired
    public TeacherService service;


    @GetMapping("/findAllTeacher")
    @ResponseBody
    public List<Teacher> findAllTeacher() {
        List<Teacher> all = service.findAllTeacher();
        return all;
    }


    @PostMapping("/addTeacher")
    public String addTeacher(Teacher teacher) {

        int i = service.addTeacher(teacher);

        if (i == 1) {
            return "/teacher";
        } else {
            return "/teacher";
        }
    }

    @GetMapping("/selectAllTeacherByTid")
   public ModelAndView selectAllByTid(@RequestParam("tid") Integer tid){
        Teacher teacher = service.selectAllByTid(tid);
        ModelAndView mdv = new ModelAndView();
        mdv.addObject("teacher",teacher);
        mdv.setViewName("/UpdateTeacher");
        return mdv;
    }

    @GetMapping("/selectAllByTd")
    @ResponseBody
    public Teacher selectAllByTd(@RequestParam("tid") Integer tid){
        Teacher teacher = service.selectAllByTid(tid);

        return teacher;
    }

    @PostMapping("/UpdateTeacher")
    public String UpdateTeacher(Teacher teacher){

        int i = service.UpdateTeacher(teacher);
        if (i == 1) {
            return "/teacher";
        } else {
            return "/teacher";
        }
    }
    @GetMapping("/delTeacherByTid")
    public String delTeacherByTid(Integer tid){
        int i = service.delTeacherByTid(tid);
        if (i == 1) {
            return "/teacher";
        } else {
            return "/teacher";
        }
    }
    @PostMapping("/findTeacherByName")
    @ResponseBody
 public List<Teacher> findTeacherByName(@RequestParam String tname){

    return   service.findTeacherByName(tname);

 }


}
