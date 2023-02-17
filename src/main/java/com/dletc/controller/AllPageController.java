package com.dletc.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AllPageController {

    @GetMapping("/Account_Page")
    public String Account(){
        return "/Account";
    }

    @GetMapping("/404_Page")
    public String err404(){
        return "/404";
    }

    @GetMapping("/Allcurriculum_Page")
    public String Allcurriculum(){
        return "/Allcurriculum";
    }

    @GetMapping("/choiceCurriculum_Page")
    public String choiceCurriculum(){
        return "/choiceCurriculum";
    }


    @GetMapping("/curriculum_Page")
    public String curriculum(){
        return "/curriculum";
    }

    @GetMapping("/InsertDetails_page")
    public String InsertDetails(){
        return "/InsertDetails";
    }

    @GetMapping("/InsertSudent_page")
    public String InsertSudent(){
        return "/InsertSudent";
    }

    @GetMapping("/InsertTeacher_Page")
    public String InsertTeacher(){
        return "/InsertTeacher";
    }

    @GetMapping("/ITeachCourses_Page")
    public String ITeachCourses(){
        return "/ITeachCourses";
    }

    @GetMapping("/modify_Page")
    public String modify(){
        return "/modify";
    }

    @GetMapping("/pagelogin_Page")
    public String pagelogin(){
        return "/page_login";
    }

    @GetMapping("/PracticeCurriculum_Page")
    public String PracticeCurriculum(){
        return "/PracticeCurriculum";
    }

    @GetMapping("/Score_Page")
    public String Score(){
        return "/Score";
    }

    @GetMapping("/teacher_Page")
    public String teacher(){
        return "/teacher";
    }

    @GetMapping("/UpdateDetails_Page")
    public String UpdateDetails(){
        return "/UpdateDetails";
    }

    @GetMapping("/UpdateStudent_Page")
    public String UpdateStudent(){
        return "/UpdateStudent";
    }

    @GetMapping("/UpdateTeacher_Page")
    public String UpdateTeacher(){
        return "/UpdateTeacher";
    }

    @GetMapping("/Student_Page")
    public String Student(){
        return "/Student";
    }
}
