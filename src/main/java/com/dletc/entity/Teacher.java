package com.dletc.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Teacher {
    private Integer tid;
    private  String tname;
    private  String tsex;
    private  String tbirthtime;
    private  String  teducation;
    private  String ttitle;
    private  String tentrydate;
    private  String tdepartment;
}
