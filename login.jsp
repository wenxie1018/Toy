<%@page import = "java.sql.*,java.util.*"%>
<%@page language="java" contentType="text/html"  pageEncoding="UTF-8"%>

<%

session.setAttribute("access","n");

	String uname = request.getParameter("uname");
	String password = request.getParameter("password");
	
	Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost/?serverTimezone=UTC";
    Connection con=DriverManager.getConnection(url,"root","1234");
	String sql="USE `employees`";
	con.createStatement().execute(sql);

	String sqll = "SELECT * FROM `employee` WHERE `uname` = ? AND `password` = ? " ;
	PreparedStatement pstmt=null;
	pstmt=con.prepareStatement(sqll);
	pstmt.setString(1,request.getParameter("uname"));
	pstmt.setString(2,request.getParameter("password"));
	ResultSet rs = pstmt.executeQuery();

	if(rs.next()){
		int id=rs.getInt("memberid");
		if(id==1){
			session.setAttribute("access","M");
			session.setAttribute("login",uname);
			out.print("<script>alert('管理者登入成功！');location.href='back.jsp'</script>");
		}
		else{
		session.setAttribute("access","y");
		session.setAttribute("login",uname);
		out.print("<script>alert('登入成功！');location.href='index.jsp'</script>");
	}
	}
	else{
		out.print("<script>alert('登入失敗！尚未註冊!');location.href='index.jsp'</script>");
	} 
	//跳轉頁面
	
%>