package com.dletc.service;

import com.dletc.entity.Achievement;
import com.dletc.entity.Curriculm;
import com.dletc.mapper.AchievementMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @BelongsProject(项目名称): CampusMvc_Project
 * @BelongsPackage (当前包的名称): com.dletc.mapper
 * @Author(作者): YangFei
 * @CreateTime(创建时间): 2023-02-16  11:00
 * @Description(功能描述):
 * @Version(版本信息): 1.0
 */

@Service
public class AchievementService {

     @Autowired
   public   AchievementMapper mapper;
//查询 某个老师某个课 有哪些学生
    public List<Achievement> findfraction( Integer tid, Integer cid){
     return     mapper.findfraction(tid,cid);
    }


    public Achievement findfraction(Integer id) {
       return mapper.findAchievementById(id);
    }

  public   int UpdateAchievementById(Achievement achievement){
        return mapper.UpdateAchievementById(achievement);
    }

    //     查询该学生所有未选择的课程
  public  List<Curriculm> NotselectCurriculm(Integer sid){
      return mapper.NotselectCurriculm(sid);
  }

    //     查询该学生所有选择的课程
  public  List<Curriculm> selectCurriculm(Integer sid){
      return mapper.selectCurriculm(sid);
  }

    //    学生选择课程
  public   int insertAchie( Integer cid, Integer sid){
      return mapper.insertAchie(cid, sid);
  }

    //   学生该退课
  public  int deletAchie( Integer cid, Integer sid){
        return mapper.deletAchie(cid,sid);
  }

    //     查询学生已修的所有课程
 public   List<Achievement> selectRepairedCurriculm(Integer sid){
        return mapper.selectRepairedCurriculm(sid);
 }
}
