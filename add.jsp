<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>add</title>
</head>
<body>
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed()){
           out.println("連線建立失敗");
		}
        else {
//Step 3: 選擇資料庫   
           sql="use employees";
           con.createStatement().execute(sql);
		   request.setCharacterEncoding("UTF-8");  
           String new_uname=request.getParameter("uname");
           String new_sex=request.getParameter("sex");
		   String new_email=request.getParameter("email");
		   String new_phone=request.getParameter("phone");
		   String new_password=request.getParameter("password");
		   String new_check=request.getParameter("check");
		   String new_address1=request.getParameter("address1");
		   String new_address2=request.getParameter("address2");
		    if(new_uname==""){
				out.print("<script>alert(decodeURIComponent('註冊失敗！姓名不能為空!請輸入姓名'));location.href='register.jsp'</script>");
				}
			if(new_sex==""){
				out.print("<script>alert(decodeURIComponent('註冊失敗！性別不能為空!請選擇性別'));location.href='register.jsp'</script>");
				}	
		    if(new_email==""){
				out.print("<script>alert(decodeURIComponent('註冊失敗！信箱不能為空!請輸入信箱'));location.href='register.jsp'</script>");
				}
			if(new_phone==""){
				out.print("<script>alert(decodeURIComponent('註冊失敗！電話不能為空!請輸入電話'));location.href='register.jsp'</script>");
				}
			if(new_password==""){
				out.print("<script>alert(decodeURIComponent('註冊失敗！密碼不能為空!請輸入密碼'));location.href='register.jsp'</script>");
				}
			if(new_check==""){
				out.print("<script>alert(decodeURIComponent('註冊失敗！確認密碼不能為空!請輸入確認密碼'));location.href='register.jsp'</script>");
				}
			if(new_address1==""){
				out.print("<script>alert(decodeURIComponent('註冊失敗！地址不能為空!請輸入地址'));location.href='register.jsp'</script>");
				}
			if(new_address2==""){
				out.print("<script>alert(decodeURIComponent('註冊失敗！地址不能為空!請輸入地址'));location.href='register.jsp'</script>");
				}
			
			

//Step 4: 執行 SQL 指令	
           
			try{
				String sqll="SELECT * FROM `employee` WHERE `uname` ='"+new_uname+"'";
			    ResultSet rs=con.createStatement().executeQuery(sqll);
				if(rs.next()){
				out.print("<script>alert(decodeURIComponent('註冊失敗！帳號已存在'));location.href='register.jsp'</script>");
				}
				else{
					sql="INSERT INTO `employee`(`uname`, `sex`, `email`, `phone`, `password`, `check`,`address1`,`address2`) ";
                    sql+="VALUES ('" + new_uname + "', ";
                    sql+="'"+new_sex+"\', ";
                    sql+="'"+new_email+"', ";
                    sql+="'"+new_phone+"', ";
		            sql+="'"+new_password+"', ";
		            sql+="'"+new_check+"', ";
					sql+="'"+new_address1+"', ";
                    sql+="'"+new_address2+"')"; 
					con.createStatement().execute(sql);
					out.print("<script>alert('恭喜您，註冊成功！');location.href='index.jsp'</script>"); 
					
				}
			}

             
//Step 6: 關閉連線
                 
//Step 5: 顯示結果 
          //直接顯示最新的資料
			
			catch(SQLException sEec)
			{
				response.sendRedirect("index.jsp");
			}
		}
	}
	catch (SQLException sExec) {
		out.println("SQL錯誤"+sExec.toString());
	}
}
catch (ClassNotFoundException err) {
	out.println("class錯誤"+err.toString());
}

%>
</html>
