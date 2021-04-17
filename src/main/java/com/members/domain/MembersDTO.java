package com.members.domain;

public class MembersDTO {
    private String member_id;
    private String member_pwd;
    private String member_name;
    private int member_phone;
    private String member_email;
    private String member_joindate;

    public String getMember_id() {
        return member_id;
    }

    public void setMember_id(String member_id) {
        this.member_id = member_id;
    }

    public String getMember_pwd() {
        return member_pwd;
    }

    public void setMember_pwd(String member_pwd) {
        this.member_pwd = member_pwd;
    }

    public String getMember_name() {
        return member_name;
    }

    public void setMember_name(String member_name) {
        this.member_name = member_name;
    }

    public int getMember_phone() {
        return member_phone;
    }

    public void setMember_phone(int member_phone) {
        this.member_phone = member_phone;
    }

    public String getMember_email() {
        return member_email;
    }

    public void setMember_email(String member_email) {
        this.member_email = member_email;
    }

    public String getMember_joindate() {
        return member_joindate;
    }

    public void setMember_joindate(String member_joindate) {
        this.member_joindate = member_joindate;
    }

    @Override
    public String toString() {
        return "MembersDTO [member_id=" + member_id + ", member_pwd=" + member_pwd + ", member_name=" + member_name
                + ", member_phone=" + member_phone + ", member_email=" + member_email + ", member_joindate="
                + member_joindate + "]";
    }
}
