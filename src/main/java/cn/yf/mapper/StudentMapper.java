package cn.yf.mapper;

import cn.yf.pojo.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper {

    //添加学生
    public boolean addStudent(Student student);

    //删除学生(根据id删除)
    public boolean deleteStudent(int id);

    //根据id修改学生信息
    public boolean updateStudent(@Param("id") int id, @Param("student") Student student);

    //查询所有学生
    public List<Student> queryAllStudent();

    //根据id查询
    public List<Student> queryStudentById(int id);

    //根据姓名查询
    public List<Student> queryStudentByName(String name);

    //查询Student表中的数据个数
    public int QueryAll();

    //查询当前页的数据
    public List<Student> queryCurrentPage(@Param("currentPage") int currentPage,@Param("pageSize") int pageSize);

}
