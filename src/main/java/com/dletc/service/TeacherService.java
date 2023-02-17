package com.dletc.service;

import com.dletc.entity.Teacher;
import com.dletc.mapper.TeacherMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeacherService {

    @Autowired
    TeacherMapper mapper;

    public List<Teacher> findAllTeacher() {
 return  mapper.findAllTeacher();
    }

    public int addTeacher(Teacher teacher) {
        return  mapper.addTeacher(teacher);
    }

    public Teacher selectAllByTid(Integer tid) {
        return  mapper.selectAllByTid(tid);
    }

    public int UpdateTeacher(Teacher teacher) {
        return  mapper.UpdateTeacher(teacher);
    }

    public int delTeacherByTid(Integer tid) {
        return  mapper.delTeacherByTid(tid);
    }

    public List<Teacher> findTeacherByName(String tname) {
        return  mapper.findTeacherByName(tname);
    }

}
