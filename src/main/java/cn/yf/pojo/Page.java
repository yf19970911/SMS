package cn.yf.pojo;


import java.util.List;


public class Page {
	
	//当前页
	private int currentPage;
	//页面大小
	private int pageSize;
	//数据总数
	private int totalCount;
	//总页数
	private int totalPage;
	//当前页的数据集合
	private List<Student> students;
	
	public Page() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Page(int currentPage, int pageSize, int totalCount, int totalPage, List<Student> students) {
		super();
		this.currentPage = currentPage;
		this.pageSize = pageSize;
		this.totalCount = totalCount;
		this.totalPage = totalPage;
		this.students = students;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getpageSize() {
		return pageSize;
	}
	
	public void setpageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public List<Student> getStudents() {
		return students;
	}
	public void setStudents(List<Student> students) {
		this.students = students;
	}
	
	@Override
	public String toString() {
		return "Page [currentPage=" + currentPage + ", pageSize=" + pageSize + ", totalCount=" + totalCount
				+ ", totalPage=" + totalPage + ", students=" + students + "]";
	}
	
	
}
