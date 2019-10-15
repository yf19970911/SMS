package cn.yf.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Student implements Serializable {

	private static final long serialVersionUID = 1L;
	private int id;
	private String name;
	private int sex;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birth;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date schoolday;
	private int marjor_id;
	private int college_id;
	
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(String name,int sex, Date birth, Date schoolday, int marjor_id,
			int college_id) {
		super();
		this.name = name;
		this.sex = sex;
		this.birth = birth;
		this.schoolday = schoolday;
		this.marjor_id = marjor_id;
		this.college_id = college_id;
	}
	public Student(int id, String name,int sex, Date birth, Date schoolday, int marjor_id,
			int college_id) {
		super();
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.birth = birth;
		this.schoolday = schoolday;
		this.marjor_id = marjor_id;
		this.college_id = college_id;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public Date getSchoolday() {
		return schoolday;
	}
	public void setSchoolday(Date schoolday) {
		this.schoolday = schoolday;
	}
	public int getMarjor_id() {
		return marjor_id;
	}
	public void setMarjor_id(int marjor_id) {
		this.marjor_id = marjor_id;
	}
	public int getCollege_id() {
		return college_id;
	}
	public void setCollege_id(int college_id) {
		this.college_id = college_id;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", sex=" + sex + ", birth=" + birth + ", schoolday=" + schoolday
				+ ", marjor_id=" + marjor_id + ", college_id=" + college_id + "]";
	}
	
}
