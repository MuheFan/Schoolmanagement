package com.dletc.service;


import com.dletc.entity.Student;
import com.dletc.mapper.StudentMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {

    @Autowired
    private StudentMapper mapper;

  public  List<Student> findAllStudent(){
    return   mapper.findAllStudent();
  }

   public int addStudent(Student student){
      return mapper.addStudent(student);
   }

   public Student selectAllBySid(Integer sid){
      return mapper.selectAllBySid(sid);
    }

   public int UpdateStudent(Student student){
      return mapper.UpdateStudent(student);
   }

    public int delStudentBySid(Integer sid){
        return mapper.delStudentBySid(sid);
    }

   public List<Student> findStudentByName( String sname){

      return mapper.findStudentByName(sname);

   }

}
