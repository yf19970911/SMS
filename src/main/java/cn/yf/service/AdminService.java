package cn.yf.service;

import cn.yf.pojo.Admin;
import org.apache.ibatis.annotations.Param;

public interface AdminService {

    //根据管理员的账号修改管理员的信息
    public boolean updateAdminByName(@Param("name") String name, @Param("admin") Admin admin);

    //判断管理员是否存在
    public boolean isExist(@Param("name") String name,@Param("password") String password);

    //根据姓名查询管理员姓名
    public Admin queryAdminByName (String name);


}
