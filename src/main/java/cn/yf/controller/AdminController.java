package cn.yf.controller;

import cn.yf.pojo.Admin;
import cn.yf.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("admin")
public class AdminController {

    @Resource(name = "adminServiceImpl")
    AdminService adminService;

    @RequestMapping("reset")
    public String resetAdmin(Admin admin, HttpSession session){
        Admin admin1 = (Admin) session.getAttribute("admin");
        String name = admin1.getName();
        adminService.updateAdminByName(name,admin);
        return "redirect:../login.jsp";
    }


}
