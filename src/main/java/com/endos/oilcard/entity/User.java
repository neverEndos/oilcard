package com.endos.oilcard.entity;

import java.util.Date;

public class User {
    private Integer userId;

    private String username;

    private String password;

    private String phone;

    private Date regTime;

    private Integer role;

    private String sex;

    private String licensePlate;

    private String carModels;

    private Date lastLoginTime;

    public User(Integer userId, String username, String password, String phone, Date regTime, Integer role, String sex, String licensePlate, String carModels, Date lastLoginTime) {
        this.userId = userId;
        this.username = username;
        this.password = password;
        this.phone = phone;
        this.regTime = regTime;
        this.role = role;
        this.sex = sex;
        this.licensePlate = licensePlate;
        this.carModels = carModels;
        this.lastLoginTime = lastLoginTime;
    }

    public User() {
        super();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public Date getRegTime() {
        return regTime;
    }

    public void setRegTime(Date regTime) {
        this.regTime = regTime;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getLicensePlate() {
        return licensePlate;
    }

    public void setLicensePlate(String licensePlate) {
        this.licensePlate = licensePlate == null ? null : licensePlate.trim();
    }

    public String getCarModels() {
        return carModels;
    }

    public void setCarModels(String carModels) {
        this.carModels = carModels == null ? null : carModels.trim();
    }

    public Date getLastLoginTime() {
        return lastLoginTime;
    }

    public void setLastLoginTime(Date lastLoginTime) {
        this.lastLoginTime = lastLoginTime;
    }
}