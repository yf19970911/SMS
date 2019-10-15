package cn.yf.controller;

import cn.yf.pojo.Page;
import cn.yf.pojo.Student;
import cn.yf.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("student")
public class StudentController {

    @Resource(name = "studentServiceImpl")
    StudentService studentService;

    @RequestMapping("query")
    public String queryStudent(HttpServletRequest request){
        List<Student> students = studentService.queryAllStudent();
        request.setAttribute("students",students);
        return "forward:../jsp/showStudent.jsp";
    }

    @RequestMapping("add")
    public String addStudent(Student student){
        studentService.addStudent(student);
        return "redirect:queryByPage";
    }

    @RequestMapping("delete")
    public String deleteStudent(int id,HttpServletRequest request){
        studentService.deleteStudent(id);
        return "redirect:queryByPage";
    }

    @RequestMapping("update")
    public String updateStudent(int id,Student student){
        studentService.updateStudent(id,student);
        return "redirect:queryByPage";
    }

    @RequestMapping("queryById")
    public String queryStudentById(int idOrName,HttpServletRequest request){
        List<Student> students = studentService.queryStudentById(idOrName);
        request.setAttribute("students",students);
        return "forward:queryByPage";
    }

    @RequestMapping("queryByPage")
    public String queryStudentByPage(HttpServletRequest request){
        int pageSize = 6;
        int currentPage = -1;
        int totalCount= studentService.QueryAll();
        int totalPage = totalCount%pageSize==0?totalCount/pageSize:totalCount/pageSize+1;
        String current = request.getParameter("currentPage");
        if(current==null){
            currentPage = 1;
        }else {
            currentPage = Integer.parseInt(current);
        }
        if(currentPage<1){
            currentPage = 1;
        }else if(currentPage>pageSize){
            currentPage =totalPage ;
        }
        List<Student> students = (List<Student>) request.getAttribute("students");
        if(students == null){
            students = studentService.queryCurrentPage(currentPage,pageSize);
        }
        Page page = new Page(currentPage,pageSize,totalCount,totalPage,students);
        request.setAttribute("page",page);
        return "forward:../jsp/showStudent.jsp";
    }


}
