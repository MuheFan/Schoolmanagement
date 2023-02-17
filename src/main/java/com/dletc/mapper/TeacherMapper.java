package com.dletc.mapper;


import com.dletc.entity.Student;
import com.dletc.entity.Teacher;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TeacherMapper {

    List<Teacher> findAllTeacher();

    int addTeacher(Teacher teacher);

    Teacher selectAllByTid(@Param("tid") Integer tid);

    int UpdateTeacher(Teacher teacher);

    int delTeacherByTid(@Param("tid") Integer tid);

    List<Teacher> findTeacherByName(@Param("tname") String tname);
}
