package com.btti.model;

public class Student {
           String name;
           String date;
           String session;
           String admission_fee;
           String course_fee;
           String paid;
           String course_name;
           String received;
           String father_name;
           String mother_name;
           String mobile;
           String birth_date;
           String address;
           String remarks;
           String picture;

    public Student() {
    }

    public Student(String name, String date, String session, String admission_fee, String course_fee, String paid, String course_name, String received, String father_name, String mother_name, String mobile, String birth_date, String address, String remarks, String picture) {
        this.name = name;
        this.date = date;
        this.session = session;
        this.admission_fee = admission_fee;
        this.course_fee = course_fee;
        this.paid = paid;
        this.course_name = course_name;
        this.received = received;
        this.father_name = father_name;
        this.mother_name = mother_name;
        this.mobile = mobile;
        this.birth_date = birth_date;
        this.address = address;
        this.remarks = remarks;
        this.picture = picture;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getSession() {
        return session;
    }

    public void setSession(String session) {
        this.session = session;
    }

    public String getAdmission_fee() {
        return admission_fee;
    }

    public void setAdmission_fee(String admission_fee) {
        this.admission_fee = admission_fee;
    }

    public String getCourse_fee() {
        return course_fee;
    }

    public void setCourse_fee(String course_fee) {
        this.course_fee = course_fee;
    }

    public String getPaid() {
        return paid;
    }

    public void setPaid(String paid) {
        this.paid = paid;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public String getReceived() {
        return received;
    }

    public void setReceived(String received) {
        this.received = received;
    }

    public String getFather_name() {
        return father_name;
    }

    public void setFather_name(String father_name) {
        this.father_name = father_name;
    }

    public String getMother_name() {
        return mother_name;
    }

    public void setMother_name(String mother_name) {
        this.mother_name = mother_name;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getBirth_date() {
        return birth_date;
    }

    public void setBirth_date(String birth_date) {
        this.birth_date = birth_date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
           
           
}
