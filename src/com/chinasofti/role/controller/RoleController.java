package com.chinasofti.role.controller;

import com.alibaba.fastjson.JSONObject;
import com.chinasofti.base.PageBean;
import com.chinasofti.role.entity.Menu;
import com.chinasofti.role.entity.MenuRole;
import com.chinasofti.role.entity.Role;
import com.chinasofti.role.service.MenuRoleService;
import com.chinasofti.role.service.MenuService;
import com.chinasofti.role.service.RoleService;
import com.chinasofti.utils.JsonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * @Description RoleController
 * @Author WYR
 * @CreateTime 2019-04-28 9:55
 */
@Controller
@RequestMapping("role")
public class RoleController {
    @Autowired
    private RoleService service;
    @Autowired
    private MenuRoleService menuRoleService;

    @RequestMapping("all")
    @ResponseBody
    public JSONObject getAllRoleByPage(HttpServletRequest request) {
        PageBean pageBean = new PageBean();
        // 页码
        String pageIndex = request.getParameter("page");
        if (pageIndex != null) {
            pageBean.setIndex(Integer.parseInt(pageIndex));
        }
        // 每页条数
        String pageCount = request.getParameter("limit");
        pageBean.setPageCount(Integer.parseInt(pageCount));
        // 总条数
        pageBean.setCount(service.getCount());
        List<Role> roleList = service.queryByPageBean(pageBean);
        return JsonUtil.getJsonObject(roleList, pageBean);
    }

    @RequestMapping("add")
    public Integer getAllRoleByPage(Role role) {
        service.addRole(role);
        return 1;
    }

    @RequestMapping("{id}")
    public String queryRole(@PathVariable(name = "id") Integer id, Map<String, Object> map) {
        Role role = service.queryRole(id);
        map.put("role", role);
        return "edit";
    }

    @RequestMapping("update")
    public Integer updateRole(Role role) {
        service.updateRole(role);
        return 1;
    }

    @RequestMapping("to/{id}")
    public String toGrant(@PathVariable(name = "id") Integer id, Map<String, Object> map) {
        Role role = service.queryRole(id);
        map.put("role", role);

        MenuService menuService = new MenuService();
        List<Menu> menuList = menuService.query();
        map.put("menuList", menuList);

        List<MenuRole> menuByRoleId = menuRoleService.findMenuByRole(id);
        map.put("menuByRole", menuByRoleId);
        return "Role/GrantRole.jsp";
    }

    @RequestMapping("grant/{roleId}/{menuIds}")
    public Integer grant(@PathVariable(name = "roleId") Integer roleId, @PathVariable(name = "menuIds") String ids) {
        menuRoleService.deleteMenuRoleByRoleId(roleId);
        String[] menuIds = ids.split(",");
        int success = 0;
        for (int i = 0; i < menuIds.length; i++) {
            int id = Integer.parseInt(menuIds[i]);
            menuRoleService.addMenuRole(new MenuRole(id, roleId));
            success += 1;
        }
        return success;
    }
}
