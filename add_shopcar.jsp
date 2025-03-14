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
           String productname=request.getParameter("productname");
           String money=request.getParameter("money");
		   String number=request.getParameter("number");
		   String img=request.getParameter("img");
		   String stock=request.getParameter("stock");
		   String productname2=request.getParameter("productname2");

//Step 4: 執行 SQL 指令	
           
			try{
				
				
					sql="INSERT INTO `shopcar`(`productname`, `money`, `number`, `img` ,`stock`,`productname2`)";
                    sql+="VALUES ('" + productname + "', ";
		            sql+="'"+money+"', ";
					sql+="'"+number+"', ";
					sql+="'"+img+"', ";
					sql+="'"+stock+"', ";
                    sql+="'"+productname2+"')"; 
					con.createStatement().execute(sql);
					out.print("<script>alert('恭喜您，新增成功！');location.href='shoppingcart.jsp'</script>"); 
					
				} 
//Step 6: 關閉連線
                 
//Step 5: 顯示結果 
          //直接顯示最新的資料
			
			catch(SQLException sEec)
			{
				out.print("<script>alert('很抱歉，新增失敗！');location.href='index.jsp'</script>"); 
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
