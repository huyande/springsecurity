package com.secuity.springsecuity.service.impl;

import com.secuity.springsecuity.bean.Sysuser;
import com.secuity.springsecuity.dao.SysuserMapper;
import com.secuity.springsecuity.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private SysuserMapper sysuserMapper;

    @Override
    public Sysuser getUserByName(String username) {
        return sysuserMapper.findByUsername(username);
    }
}
