package com.secuity.springsecuity.bean;

/**
 * @date 2019-02-24
 */
public class Role {
    private Integer id;

    private String rodename;

    private String rodecode;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRodename() {
        return rodename;
    }

    public void setRodename(String rodename) {
        this.rodename = rodename == null ? null : rodename.trim();
    }

    public String getRodecode() {
        return rodecode;
    }

    public void setRodecode(String rodecode) {
        this.rodecode = rodecode == null ? null : rodecode.trim();
    }
}