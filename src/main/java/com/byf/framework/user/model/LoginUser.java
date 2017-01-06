package com.byf.framework.user.model;

public class LoginUser {
    private String id;      
    private String name;//姓名
    private String sex;//性别
    private String tel;//手机号
    private String pwd;//密码
    private String d_p;//身份，医生还是患者
    private String birth;//出生日期

    public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd== null ? null : pwd.trim();;
	}
	public String getD_p() {
		return d_p;
	}
	public void setD_p(String d_p) {
		this.d_p = d_p== null ? null : d_p.trim();;
	}
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
    public String getBirth() {
        return birth;
    }
    public void setBirth(String birth) {
        this.birth = birth == null ? null : birth.trim();
    }
}