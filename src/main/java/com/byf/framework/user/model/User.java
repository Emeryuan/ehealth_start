package com.byf.framework.user.model;

public class User {
    private String id;
    private String name;
    private String sex;
    private String tel;
    private String address;

    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
    public String getSex() {
        return sex;
    }
    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }
    public String getTel() {
        return tel;
    }
    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }
}