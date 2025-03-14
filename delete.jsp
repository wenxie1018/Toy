<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Step 0: import library -->
<%@ page import = "java.sql.*" %> 
<html>
    <head>
        <title>JSP DELETE</title>
    </head>
    <body>
       
	   <%  
//Step 1: 載入資料庫驅動程式 		
        try {
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
					String productname2=request.getParameter("productname2");
//Step 4: 執行 SQL 指令
                    String sql = "DELETE FROM `product` WHERE `productname2` = '"+productname2+"' ";
                    
                    int rec = con.createStatement().executeUpdate(sql);
//Step 5: 顯示結果 
                    if (rec>0)
					   out.println("<script>alert('刪除成功！');location.href='back.jsp'</script>");
					else
 					   out.println("<script>alert('刪除失敗！');location.href='back.jsp'</script>");
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
