package com.dletc.mapper;


import com.dletc.entity.Curriculm;
import com.dletc.entity.Teacher;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CurriculmMapper {

    List<Curriculm> findAllCurriculm();

    int addCurriculm(Curriculm curriculm);

    Curriculm selectAllByCid(@Param("cid") Integer cid);

    int UpdateCurriculm(Curriculm curriculm);

    int delCurriculmByCid(@Param("cid") Integer cid);

    List<Teacher> findCurriculmByName(@Param("cname") String cname);

    List<Curriculm> findCuriculmByTeacherId(@Param("tid") Integer tid);

}
