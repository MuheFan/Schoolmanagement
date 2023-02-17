package com.dletc.mapper;

import com.dletc.entity.Student;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentMapper {

    List<Student> findAllStudent();

    int addStudent(Student student);

    Student selectAllBySid(@Param("sid") Integer sid);

    int UpdateStudent(Student student);

    int delStudentBySid(@Param("sid") Integer sid);

    List<Student> findStudentByName(@Param("sname") String sname);
}
