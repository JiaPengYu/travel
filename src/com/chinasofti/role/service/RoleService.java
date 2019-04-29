package com.chinasofti.role.service;

import com.chinasofti.base.PageBean;
import com.chinasofti.role.dao.RoleDao;
import com.chinasofti.role.dao.impl.RoleDaoImpl;
import com.chinasofti.role.entity.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description RoleService
 * @Author WYR
 * @CreateTime 2019-04-28 9:52
 */
@Service
public class RoleService {
    @Autowired
    private RoleDao dao;

    public List<Role> queryAll() {
        return dao.queryAll();
    }

    public List<Role> queryByPageBean(PageBean pageBean) {
        return dao.queryByPageBean(pageBean);
    }

    public Role queryRole(Integer id) {
        return dao.query("roleId", id);
    }

    public void addRole(Role role) {
        dao.add(role);
    }

    public Integer getCount() {
        return dao.getCount();
    }

    public void updateRole(Role role) {
        dao.update(role);
    }

    public Role queryRoleById(Integer roleId) {
        return dao.query("roleId", roleId);
    }

}
