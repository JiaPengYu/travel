package com.chinasofti.user.entity;

/**
 * @Description User
 * @Author WYR
 * @CreateTime 2019-04-27 17:32
 */
public class User {
    /**
     * 普通用户编号
     */
    private Integer userId;
    /**
     * 电子邮箱(用户名)
     */
    private String email;
    /**
     * 登录密码
     */
    private String password;
    /**
     * 激活状态(0为未激活，1为已激活)
     */
    private Integer state;
    /**
     * 激活码 邮箱注册时根据邮箱验证
     */
    private String code;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
