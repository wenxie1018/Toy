<!DOCTYPE html>
<%@page import = "java.sql.*,java.util.*"%>
<%@page language="java" contentType="text/html"  pageEncoding="UTF-8"%>
<%@include file="config.jsp"%> 
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>玩物喪薪|後台</title>
    <link rel="icon" href="assets/favicon.ico" type="image/x-icon" />
</head>
<style>
    @import url(assets/back.css);
</style>
<body>
    <div id="main">
        <body id="body1">
            <header id="navbar">
                    
                    <div id="myNav" class="overlay">
                      
                      <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;
                      </a>
                <div class="overlay-content" id="menu">
                  <a style=" background-color: #FF96ADa4;"  href="product.jsp">♡所有商品♡</a>
                  <a style="background-color: #005b8ca4;" href="productzhoushu.jsp">♡咒術迴戰♡</a>
                  <a style=" background-color: #FF96ADa4;"  href="productoni.jsp">♡鬼滅之刃♡</a>
                  <a style="background-color: #005A8Ca4;" href="productmoon.jsp">♡美少女戰士♡</a>
                  <a style=" background-color: #FF96ADa4;"  href="productlabi.jsp">♡蠟筆小新♡</a>
                  <a style="background-color: #005A8Ca4; " href="contact.jsp">♡關於我們♡</a>  
                </div>
                    </div>
                    <span class="menu" onclick="openNav()">
                      <div class="menuicon"></div>
                      <div class="menuicon"></div> 
                      <div class="menuicon"></div>
                    </span>
        
                    <input class="header" id="textbox" type="search" placeholder="搜索您想要的商品">
                    <div class="dropdown">
                      <a href="shoppingcart.jsp"><button class="dropbtn">購物車</button></a>
                      
                    </div>
                    <%
			if(session.getAttribute("access")=="y" || session.getAttribute("access")=="M")
			{
			%>
            <button class="header" style="border: none; background:none;" onclick="document.getElementById('id01').style.display='block'"><a href="logout.jsp">登出</button>
			<%
			}
			else
			{
			%>
            <button class="header" style="border: none; background:none;" onclick="document.getElementById('id01').style.display='block'">登入/註冊</button>
          <div id="id01" class="modal animate">
            <form class="modal-content" action="login.jsp" method="post">
              <div class="container">
                <h3>LOGIN</h3>
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close">&times;</span>
                <label for="uname"><b>Username使用者名稱</b></label>
                <input class="passworduser" type="text" placeholder="Enter Username" name="uname" required>
          
                <label for="psw"><b>Password密碼</b></label>
                <input class="passworduser" type="password" placeholder="Enter Password" name="password" required>
                <label>
                  <input type="checkbox" checked="checked" name="remember"> Remember me 記住我 <a href="">忘記密碼?</a> 

                </label>  
                <button id="loginbut" type="submit">登入</button><br>
                
                <p>還沒有帳戶? <a href="register.jsp">點我註冊</a></p>
                
              </div>
            </form>
          </div>
		  <%
			}
		  %>
          <button class="header" style="border: none; background:none;"><a style="color: black; text-decoration: none;" href="user.jsp">會員中心</a></button>
		  <%
		  if(session.getAttribute("access")=="M")
		  {%>
			  <button class="header" style="border: none; background:none;"><a style="color: black; text-decoration: none;" href="back.jsp">後台</a></button>
		  <%}%>
                  <h2 style="margin-left:80px ; margin-top: 5px;"><a style="color: black; text-decoration: none;" href="index.jsp">玩物喪薪</a></h2>
            </header>
            <section>
            <div class="section">
                <h2>後台管理系統</h2>
                
                <div class="tab">
                  <button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">新增</button>
                  <button class="tablinks" onclick="openCity(event, 'Paris')">刪除</button>
                  <button class="tablinks" onclick="openCity(event, 'Tokyo')">修改</button>
                  <button class="tablinks" onclick="openCity(event, 'T')">訂單管理</button>
                  <button class="tablinks" onclick="openCity(event, 'user')">會員資料管理</button>
                </div>
				
                <form class="insertform" method="get" action="insert.jsp">
                <div id="London" class="tabcontent">
                  <h3>新增</h3>	
				  <label for="img"><b>圖片位置</b></label><br>
                  <input type="text" name="img" id="insertinput" style="margin-left:10px ;"></br>
				  <label for="productname"><b>產品名1</b></label><br>
                  <input type="text" name="productname" id="insertinput" style="margin-left:10px ;"></br>
				  <label for="productname2"><b>產品名2</b></label><br>
                  <input type="text" name="productname2" id="insertinput" style="margin-left:10px ;"></br>
				  <label for="smalltit"><b>產品分類</b></label><br>
                  <input type="text" name="smalltit" id="insertinput" style="margin-left:10px ;"></br>
				  <label for="location"><b>商品連結</b></label><br>
                  <input type="text" name="location" id="insertinput" style="margin-left:10px ;"></br>
				  <label for="stock"><b>庫存</b></label><br>
                  <input type="text" name="stock" id="insertinput" style="margin-left:10px ;"></br>
				  <label for="price"><b>價格</b></label><br>
                  <input type="text" name="price" id="insertinput" style="margin-left:10px ;"></br>
				  <input class="submitbut" type="submit" value="送出">
                </div>
				</form>
				
                <form class="deleteform" method="get" action="delete.jsp">
                <div id="Paris" class="tabcontent">
				<h3>刪除</h3>
				<%
				con.createStatement().execute("USE `employees`");
				String sql = "SELECT `productname2` FROM `product`" ;
                ResultSet tmp =  con.createStatement().executeQuery(sql);
				out.print("<select name='productname2'>");
				while(tmp.next()){			
		        //一筆一筆讀取資料，如果回傳false,表示資料讀取完畢。
		        //用回圈印出結果，getString(1)表示id,getString(2)表示name,依此類推
				        
                        for(int i=1; i<=1; i++){
                            out.println("<option>" +tmp.getString(i) + "</option> <BR>");
                        }
				}
				out.print("</select>");	
				%>
                <input class="submitbut" type="submit" value="送出">
                </div>
				</form>
                
				<form class="insertform" method="get" action="update.jsp">
                 <div id="Tokyo" class="tabcontent">
                  <h3>修改</h3>
                  <%
					con.createStatement().execute("USE `employees`");
					String sqll = "SELECT `productname2` FROM `product`" ;
					ResultSet sel =  con.createStatement().executeQuery(sqll);
					out.print("<select name='productname2'>");
					while(sel.next()){			
					//一筆一筆讀取資料，如果回傳false,表示資料讀取完畢。
					//用回圈印出結果，getString(1)表示id,getString(2)表示name,依此類推
							
							for(int i=1; i<=1; i++){
								out.println("<option>" +sel.getString(i) + "</option> <BR>");
							}
					}
					out.print("</select>");	
				  %>
				  <p>
				  <label for="img"><b>新圖片位置</b></label><br>
                  <input type="text" name="img" id="insertinput" style="margin-left:10px ;"></br>
				  <label for="productname"><b>新產品名1</b></label><br>
                  <input type="text" name="productname" id="insertinput" style="margin-left:10px ;"></br>
				  <label for="smalltit"><b>新產品分類</b></label><br>
                  <input type="text" name="smalltit" id="insertinput" style="margin-left:10px ;"></br>
				  <input class="submitbut" type="submit" value="送出">
				 </div>
				</form>

                <div id="T" class="tabcontent">
                    <h3>訂單管理</h3>
                    <table class="table">
                        <tr class="account-tit">
                            <td>品名</td>
                            <td>數量</td>
                            <td>單價</td>
                            <td>小計</td>
                        </tr>
                        <tr class="product1">
                            <td>[特典版] Kotobukiya 咒術迴戰 五條悟</td>
                            <td><input class="num" type="number" value="1"></td>
                            <td>$4,450</td>
                            <td>$4,450</td>
                            <td><button>刪除</button></td>
                        </tr>
                    </table>
                </div>

                <div id="user" class="tabcontent">
                    <h3>會員資料管理</h3>
                    <table class="table">
                        <tr class="account-tit">
                            
                            <td>會員名稱</td>
                            <td>電話</td>
                            <td>住址</td>
                            <td>Email</td>
                        </tr>
                        <tr class="product1">
                            
                            <td>阿晏</td>
                            <td>0900866789</td>
                            <td>三花路365號</td>
                            <td>riiifl@gmail.com</td>
                            <td><button>刪除</button></td>
                            
                        </tr>
                    </table>
                </div>

                
            </div>
            </section>
   
            
            <script src="assets/back.js">
                
            </script>
          </script>
          <script>
            // Get the modal
            var modal = document.getElementById('id01');
            
            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
            </script>
            <script>
              function openNav() {
                document.getElementById("myNav").style.height = "100%";
                document.getElementById("main").style.marginLeft = "250px";
                document.getElementById("main").style.backgroundColor = "rgba(0, 0, 0, 0.726);";
              }
          
          /* Close */
              function closeNav() {
                document.getElementById("myNav").style.height = "0%";
                document.getElementById("main").style.marginLeft = "0";
                document.getElementById("main").style.backgroundColor = "none";
              }
            </script>
            <script>
              window.onscroll = function() {scrollFunction()};
          
              function scrollFunction() {
                if (document.body.scrollTop>200 || document.documentElement.scrollTop>200) {
                  document.getElementById("navbar").style.top = "-100px";
                } else {
                  document.getElementById("navbar").style.top = "0";
                }
              }
          
            </script>
</body>
</html>