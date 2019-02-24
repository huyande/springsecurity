package com.secuity.springsecuity.service;

import com.secuity.springsecuity.bean.Permission;

import java.util.List;

public interface PermissionService {
    List<Permission> getPermissionsByRoleCode(String rolecode);
}
