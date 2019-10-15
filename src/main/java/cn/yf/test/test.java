package cn.yf.test;

import cn.yf.pojo.Admin;
import cn.yf.pojo.Student;
import cn.yf.service.AdminService;
import cn.yf.service.StudentService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class test {

    @Resource(name = "adminServiceImpl")
    AdminService adminService;

    @Resource(name = "studentServiceImpl")
    StudentService studentService;


    @Test
    public void test1(){
        Admin admin = new Admin("baby","杨爱婷");
        boolean result = adminService.updateAdminByName("加油",admin);
        System.out.println(result);
    }

    @Test
    public void test2(){
        boolean result1 = adminService.isExist("123","456");
        boolean result2 = adminService.isExist("唐慧婷","520");
        System.out.println(result1);
        System.out.println(result2);
    }

    @Test
    public void test3(){
        Admin admin = adminService.queryAdminByName("杨帆");
        System.out.println(admin);
    }

    @Test
    public void test4(){
        Date date = new Date();
        Student s = new Student("坚持就是胜利！",1,date,date,1,1);
        boolean result = studentService.addStudent(s);
        System.out.println(result);
    }

    @Test
    public void test5(){
        boolean result = studentService.deleteStudent(37);
        System.out.println(result);
    }

    @Test
    public void test6(){
        Date date = new Date();
        Student s = new Student("坚持就是胜利！",1,date,date,1,1);
        boolean result = studentService.updateStudent(36,s);
        System.out.println(result);
    }

    @Test
    public void test7(){
        List<Student> studentList = studentService.queryAllStudent();
        System.out.println(studentList);
    }

//    00000000000000000000000000000000000000000000000
    @Test
    public void test8(){
        List<Student> studentList = studentService.queryStudentById(10);
        System.out.println(studentList);
    }

    @Test
    public void test9(){
        List<Student> studentList = studentService.queryStudentByName("杨帆");
        System.out.println(studentList);
    }

    @Test
    public void test10(){
        int totalCount = studentService.QueryAll();
        System.out.println(totalCount);
    }

    @Test
    public void test11(){
        List<Student> studentList = studentService.queryCurrentPage(2,5);
        System.out.println(studentList);
    }


}
