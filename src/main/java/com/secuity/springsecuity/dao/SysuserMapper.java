package com.secuity.springsecuity.dao;

import com.secuity.springsecuity.bean.Sysuser;

public interface SysuserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Sysuser record);

    int insertSelective(Sysuser record);

    Sysuser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Sysuser record);

    int updateByPrimaryKey(Sysuser record);
    
    Sysuser findByUsername(String username);
}