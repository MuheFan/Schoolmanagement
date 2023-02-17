package com.dletc.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Curriculm {
      private Integer cid;
      private String cname;
      private Integer tid;
      private String cclasstime;
      private String cclassadress;
      private Integer cmoth;
      private String cclasstype;
      private String cdepartment;
     private Integer cfraction;

}
