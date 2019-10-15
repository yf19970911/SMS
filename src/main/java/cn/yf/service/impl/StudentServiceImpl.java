package cn.yf.service.impl;

import cn.yf.mapper.StudentMapper;
import cn.yf.pojo.Student;
import cn.yf.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    StudentMapper studentMapper;

    @Override
    public boolean addStudent(Student student) {
        return studentMapper.addStudent(student);
    }

    @Override
    public boolean deleteStudent(int id) {
        return studentMapper.deleteStudent(id);
    }

    @Override
    public boolean updateStudent(int id, Student student) {
        return studentMapper.updateStudent(id,student);
    }

    @Override
    public List<Student> queryAllStudent() {
        return studentMapper.queryAllStudent();
    }

    @Override
    public List<Student> queryStudentById(int id) {
        return studentMapper.queryStudentById(id);
    }

    @Override
    public List<Student> queryStudentByName(String name) {
        return studentMapper.queryStudentByName(name);
    }

    @Override
    public int QueryAll() {
        return studentMapper.QueryAll();
    }

    @Override
    public List<Student> queryCurrentPage(int currentPage, int pageSize) {
        return studentMapper.queryCurrentPage(currentPage,pageSize);
    }
}
