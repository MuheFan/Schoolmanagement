package com.dletc.mapper;

import com.dletc.entity.Achievement;
import com.dletc.entity.Curriculm;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @BelongsProject(项目名称): CampusMvc_Project
 * @BelongsPackage (当前包的名称): com.dletc.mapper
 * @Author(作者): YangFei
 * @CreateTime(创建时间): 2023-02-16  11:00
 * @Description(功能描述):
 * @Version(版本信息): 1.0
 */

@Repository
public interface AchievementMapper {
//查询 某个老师某个课 有哪些学生
     List<Achievement> findfraction(@Param("tid") Integer tid,@Param("cid") Integer cid);
// 查询 该学生的成绩
     Achievement findAchievementById(@Param("id") Integer id);

//     修改  学生成绩
     int UpdateAchievementById(Achievement achievement);

//     查询该学生所有未选择的课程
     List<Curriculm> NotselectCurriculm(@Param("sid") Integer sid);

     //     查询该学生所有选择的课程
     List<Curriculm> selectCurriculm(@Param("sid") Integer sid);

//    学生选择课程
   int insertAchie(@Param("cid") Integer cid,@Param("sid") Integer sid);
//   学生该退课
     int deletAchie(@Param("cid") Integer cid,@Param("sid") Integer sid);

//     查询学生已修的所有课程 与成绩
    List<Achievement> selectRepairedCurriculm(@Param("sid") Integer sid);
}
