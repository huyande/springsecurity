package com.secuity.springsecuity.service.impl;

import com.secuity.springsecuity.bean.Permission;
import com.secuity.springsecuity.bean.Role;
import com.secuity.springsecuity.bean.Sysuser;
import com.secuity.springsecuity.dao.PermissionMapper;
import com.secuity.springsecuity.service.MyUserDetailsService;
import com.secuity.springsecuity.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MyUserDetailsServiceImpl implements MyUserDetailsService {

    @Autowired
    private UserService userService;

    @Autowired
    private PermissionMapper permissionMapper;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Sysuser user = userService.getUserByName(username);
        if(user== null){
            throw new UsernameNotFoundException(username);
        }
        List<SimpleGrantedAuthority> authorities = new ArrayList<>();
        for(Role role:user.getRoles()){
            //获取每种角色下面的资源列表
            List<Permission> permissionList = permissionMapper.getPermissionsByRoleCode(role.getRodecode());
            for (Permission permission:permissionList) {
                authorities.add(new SimpleGrantedAuthority(permission.getCode()));
            }
        }
        return new User(user.getUsername(),user.getPassword(),authorities);
    }
}
