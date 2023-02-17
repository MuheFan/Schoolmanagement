package com.dletc.controller;


import com.dletc.entity.Student;
import com.dletc.service.StudentService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class StudentController {
    @Autowired
    public StudentService service;


    @GetMapping("/findAllStudent")
    @ResponseBody
    public List<Student> findAllStudent() {
        List<Student> all = service.findAllStudent();
        return all;
    }


    @PostMapping("/addStudent")
    public String addStudent(Student student) {

        int i = service.addStudent(student);

        if (i == 1) {
            return "/Student";
        } else {
            return "/Student";
        }
    }

    @GetMapping("/selectAllBySid")
   public ModelAndView selectAllBySid(@RequestParam("sid") Integer sid){
        Student student = service.selectAllBySid(sid);
        System.out.println(student);
        ModelAndView mdv = new ModelAndView();
        mdv.addObject("student",student);
        mdv.setViewName("/UpdateStudent");
        return mdv;
    }

    @GetMapping("/selectAllBySd")
    @ResponseBody
    public Student selectAllBySd(@RequestParam("sid") Integer sid){
        Student student = service.selectAllBySid(sid);

        return student;
    }
    @PostMapping("/UpdateStudent")
    public String UpdateStudent(Student student){
        int i = service.UpdateStudent(student);
        if (i == 1) {
            return "/Student";
        } else {
            return "/Student";
        }
    }
    @GetMapping("/delStudentBySid")
    public String delStudentBySid(Integer sid){
        int i = service.delStudentBySid(sid);
        if (i == 1) {
            return "/Student";
        } else {
            return "/Student";
        }
    }
    @PostMapping("/findStudentByName")
    @ResponseBody
 public List<Student> findStudentByName(@RequestParam String sname){

    return    service.findStudentByName(sname);

 }


}
