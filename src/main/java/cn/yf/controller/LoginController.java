package cn.yf.controller;

import cn.yf.pojo.Admin;
import cn.yf.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Resource(name = "adminServiceImpl")
    AdminService adminService;

    @RequestMapping("login")
    public String login(String name, String password, HttpServletRequest request, HttpSession session){
        boolean result = adminService.isExist(name,password);
        Admin admin = adminService.queryAdminByName(name);
        if(result){
            session.setAttribute("admin",admin);
            return "redirect:student/queryByPage" ;
        }else{
            request.setAttribute("message","error");
            return "forward:login.jsp";
        }
    }

}
