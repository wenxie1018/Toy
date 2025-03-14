<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
					String img=request.getParameter("img");
					String productname=request.getParameter("productname");
					String productname2=request.getParameter("productname2");
					String smalltit=request.getParameter("smalltit");
//Step 4: 執行 SQL 指令                       
                    String sql = "UPDATE `product` SET `img` = '"+img+"',`productname`= '"+productname+"',`smalltit`= '"+smalltit+"' WHERE `productname2` = '"+productname2+"' ";
                    
                    //con.createStatement().execute(sql);
					int no=con.createStatement().executeUpdate(sql); //可回傳異動數
					if (no > 0)
//Step 5: 顯示結果 
                    out.println("<script>alert('修改成功！');location.href='back.jsp'</script>");
					else
						out.println("<script>alert('修改失敗！');location.href='back.jsp'</script>");
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
