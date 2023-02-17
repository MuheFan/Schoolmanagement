package com.dletc.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @BelongsProject(项目名称): CampusMvc_Project
 * @BelongsPackage (当前包的名称): com.dletc.entity
 * @Author(作者): YangFei
 * @CreateTime(创建时间): 2023-02-16  08:42
 * @Description(功能描述):
 * @Version(版本信息): 1.0
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Achievement {
  private  Integer aid;
  private  Student student;
  private  Curriculm curriculm;
  private  Integer fracion;
}
