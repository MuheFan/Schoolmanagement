package com.dletc.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
    private Integer sid;
    private String sname;
    private  String ssex;
    private String birthtime;
    private String sschooltime;
    private String sdepartment;
}
