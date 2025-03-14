<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!-- Step 0: import library -->
<%@ page import = "java.sql.*" %> 
<html>
    <head>
        <title>JSP UPDATE</title>
    </head>
    <body>      
	   <%  		
        try {
//Step 1: 載入資料庫驅動程式 	        
            Class.forName("com.mysql.jdbc.Driver");	  
            try {
//Step 2: 建立連線 	            
                String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","1234");   				
		        if(con.isClosed())
                    out.println("連線建立失敗");
                else
                    {	
//Step 3: 選擇資料庫	                    	
                    con.createStatement().execute("USE `employees`");
					request.setCharacterEncoding("UTF-8"); 
					String uname=request.getParameter("uname");
					String email=request.getParameter("email");
					String phone=request.getParameter("phone");
					String password=request.getParameter("password");
					String address1=request.getParameter("address1");
					String address2=request.getParameter("address2");
//Step 4: 執行 SQL 指令                       
                    String sql = "UPDATE `employee` SET `email`= '"+email+"' WHERE `uname`= '"+uname+"' ";
					sql = "UPDATE `employee` SET `phone`= '"+phone+"' WHERE `uname`= '"+uname+"' ";
					sql = "UPDATE `employee` SET `password`= '"+password+"' WHERE `uname`= '"+uname+"' ";
					sql = "UPDATE `employee` SET `address1`= '"+address1+"' WHERE `uname`= '"+uname+"' ";
					sql = "UPDATE `employee` SET `address2`= '"+address2+"' WHERE `uname`= '"+uname+"' ";
                    
                    //con.createStatement().execute(sql);
					int no=con.createStatement().executeUpdate(sql); //可回傳異動數
					if (no > 0)
//Step 5: 顯示結果 
                    out.println("<script>alert('修改成功！');location.href='user.jsp'</script>");
					else
						out.println("<script>alert('修改失敗！');location.href='user.jsp'</script>");
//Step 6: 關閉連線 
                    con.close();
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
    </body>
</html>
