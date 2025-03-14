<%@ page import = "java.io.*,java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
Class.forName("com.mysql.jdbc.Driver");
String url1="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC"; // url 是連接 MySQL 的位址（IP 或網域）
String sql=""; // 建立字串變數 sql
Connection con1=DriverManager.getConnection(url,"root","1234");

sql="USE `employees`";
con.createStatement().execute(sql);
sql="SELECT * FROM `counter`";
ResultSet rs=con.createStatement().executeQuery(sql);

while(rs.next())
{
	String stra=rs.getString(1);
	int c=Integer.parseInt(stra);
	if(session.isNew())
	{
		c++;
		out.print("你是第"+c+"位訪客");
	}
	else
	{
		out.print("你是第"+c+"位訪客");
	}
	sql="update counter set count=\'" + c + "\'";
}
con.createStatement().execute(sql); // 執行剛剛的 SQL 語法
con.close();
 
%>