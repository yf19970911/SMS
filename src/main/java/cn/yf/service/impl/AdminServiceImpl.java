package cn.yf.service.impl;

import cn.yf.mapper.AdminMapper;
import cn.yf.pojo.Admin;
import cn.yf.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    AdminMapper adminMapper;

    @Override
    public boolean updateAdminByName(String name, Admin admin) {
        return adminMapper.updateAdminByName(name,admin);
    }

    @Override
    public boolean isExist(String name, String password) {
        Admin admin = adminMapper.isExist(name,password);
        if(admin == null){
            return false;
        }
        return true;
    }

    @Override
    public Admin queryAdminByName(String name) {
        return adminMapper.queryAdminByName(name);
    }
}
