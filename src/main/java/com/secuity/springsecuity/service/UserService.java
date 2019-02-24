package com.secuity.springsecuity.service;

import com.secuity.springsecuity.bean.Sysuser;

public interface UserService {
    /**
     * 获取用户信息 更具名称
     */
    Sysuser getUserByName(String username);
}
