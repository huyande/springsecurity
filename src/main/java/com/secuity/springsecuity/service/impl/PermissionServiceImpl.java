package com.secuity.springsecuity.service.impl;

import com.secuity.springsecuity.bean.Permission;
import com.secuity.springsecuity.dao.PermissionMapper;
import com.secuity.springsecuity.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PermissionServiceImpl implements PermissionService {
    @Autowired
    private PermissionMapper permissionMapper;

    @Override
    public List<Permission> getPermissionsByRoleCode(String rolecode) {
        return permissionMapper.getPermissionsByRoleCode(rolecode);
    }
}
