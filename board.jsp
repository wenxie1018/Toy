<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>board</title>
</head>
<body>

 <% 
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost:3306/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="USE `employees`";
           con.createStatement().execute(sql);
		   request.setCharacterEncoding("UTF-8");
           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1"),"UTF-8"編碼
           String uname=request.getParameter("uname");
		   String smalltit=request.getParameter("smalltit");
           String comment=request.getParameter("comment");
         
           java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
//Step 4: 執行 SQL 指令	
           sql="INSERT  `board`(`uname`,`smalltit`,`comment`) ";
           sql+="VALUES ('" + uname  + "', '" + smalltit  + "' , '" + comment  + "')";     

           con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();


//Step 5: 顯示結果 
          //直接顯示最新的資料
           //response.sendRedirect("viewwall.jsp");
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
新增成功:<br>
<a href=product.jsp>感謝您的評論!按此返回購物頁面!</a><br>
<a href='viewwall.jsp?page=1'>觀看商品評論~</a><p>
</body>
</html>