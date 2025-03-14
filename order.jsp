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
					String sql="use employees";
					con.createStatement().execute(sql);
					String sql1 = "SELECT * FROM `shopcar`";
					ResultSet rs1 =con.createStatement().executeQuery(sql1);
					request.setCharacterEncoding("UTF-8");  
				    String productname=request.getParameter("productname");
				    String money=request.getParameter("money");
				    String number=request.getParameter("number");
				    String img=request.getParameter("img");
					String sum=request.getParameter("sum");
					String pay=request.getParameter("pay");
					String address=request.getParameter("address");
					String uname=request.getParameter("uname");
					String productname2=request.getParameter("productname2");
					String stock=request.getParameter("stock");
					
					
					while(rs1.next()){
					sql="INSERT INTO `order`(`productname`, `money`, `number`, `img` ,`sum` ,`pay`,`address`,`uname`,`productname2`,`stock`)";
                    sql+="VALUES ('" + productname + "', ";
		            sql+="'"+money+"', ";
					sql+="'"+number+"', ";
					sql+="'"+img+"', ";
					sql+="'"+sum+"', ";
					sql+="'"+pay+"', ";
					sql+="'"+address+"', ";
					sql+="'"+uname+"', ";
					sql+="'"+productname2+"', ";
                    sql+="'"+stock+"')"; 
					con.createStatement().execute(sql);
					int total=0;
					String a=rs1.getString(6);
					String b=rs1.getString(4);
					int sto=Integer.valueOf(a);
					int num=Integer.valueOf(b);
					total=sto-num;
				    sql="UPDATE `product` SET `stock`='"+total+"' WHERE `productname2`= '"+productname2+"'";
				    con.createStatement().execute(sql);
					}
					out.print("<script>alert('恭喜您，下單成功！');location.href='delete_checkout.jsp'</script>");
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
