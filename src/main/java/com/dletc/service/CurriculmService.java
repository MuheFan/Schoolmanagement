package com.dletc.service;


import com.dletc.entity.Curriculm;
import com.dletc.entity.Teacher;
import com.dletc.mapper.CurriculmMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CurriculmService {

    @Autowired
    CurriculmMapper mapper;

 public    List<Curriculm> findAllCurriculm(){
        return  mapper.findAllCurriculm();
    }

    public   int addCurriculm(Curriculm curriculm){
        return mapper.addCurriculm(curriculm);
    }

    public   Curriculm selectAllByCid( Integer cid){
        return mapper.selectAllByCid(cid);
    }

    public    int UpdateCurriculm(Curriculm curriculm){
        return mapper.UpdateCurriculm(curriculm);
    }

    public    int delCurriculmByCid(Integer cid){
        return  mapper.delCurriculmByCid(cid);
    }

    public   List<Teacher> findCurriculmByName( String cname){
        return mapper.findCurriculmByName(cname);
    }

   public List<Curriculm> findCuriculmByTeacherId(Integer tid){
     return mapper.findCuriculmByTeacherId(tid);
   }

}
