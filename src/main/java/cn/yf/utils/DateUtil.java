package cn.yf.utils;

public class DateUtil {
	
	//DateUtil这个日期工具类主要是用于java.util.Date类与java.sql.Timestamp 类的互相转换。
	
	
	//将Date类型转化成Timestamp
	public static java.sql.Timestamp d2t(java.util.Date d) {
		if (null == d)
			return null;
		return new java.sql.Timestamp(d.getTime());
	}
	
	////将Timestamp类型转化成Date类型
	public static java.util.Date t2d(java.sql.Timestamp t) {
		if (null == t)
			return null;
		return new java.util.Date(t.getTime());
	}
}

