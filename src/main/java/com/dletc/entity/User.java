package com.dletc.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private Integer uid;
    private Integer uaccounts;
    private String upassword;
    private String utype;
    private String img;
}
