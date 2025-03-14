<!DOCTYPE html>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="config.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>玩物喪薪|購物車</title>
    <link rel="icon" href="assets/favicon.ico" type="image/x-icon" />
    <style>
        @import url(assets/checkout.css);

    </style>
</head>
<div id="main">
<body id="body1">
    <header id="navbar">
            
            <div id="myNav" class="overlay">
              
              <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;
              </a>
              <div class="overlay-content" id="menu">
                <a style=" background-color: #FF96ADa4;"  href="product.html">♡所有商品♡</a>
                <a style="background-color: #005b8ca4;" href="productzhoushu.html">♡咒術迴戰♡</a>
                <a style=" background-color: #FF96ADa4;"  href="productoni.html">♡鬼滅之刃♡</a>
                <a style="background-color: #005A8Ca4;" href="productmoon.html">♡美少女戰士♡</a>
                <a style=" background-color: #FF96ADa4;"  href="productlabi.html">♡蠟筆小新♡</a>
                <a style="background-color: #005A8Ca4; " href="contact.html">♡關於我們♡</a>  
				<a style=" background-color: #FF96ADa4;"  href="comment.jsp">♡商品評論♡</a>
              </div>
            </div>
            <span class="menu" onclick="openNav()">
              <div class="menuicon"></div>
              <div class="menuicon"></div>
              <div class="menuicon"></div>
            </span>

            <input class="header" id="textbox" type="search" placeholder="搜索您想要的商品">
            <div class="dropdown">
              <a href="shoppingcart.html"><button class="dropbtn">購物車</button></a>
              
            </div>
            <%
			if(session.getAttribute("access")=="y" || session.getAttribute("access")=="M")
			{
			%>
			<button class="header" style="border: none; background:none;"><a style="color: black; text-decoration: none;" href="user.jsp">會員中心</a></button>
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
          
		  <%
		  if(session.getAttribute("access")=="M")
		  {%>
	          
			  <button class="header" style="border: none; background:none;"><a style="color: black; text-decoration: none;" href="back.jsp">後台</a></button>
			  
		  <%}%>
          <h2 style="margin-left:80px ; margin-top: 5px;"><a style="color: black; text-decoration: none;" href="index.jsp">玩物喪薪</a></h2>
    </header>
    <section>
      <a href="index.html"><img class="producttit"src="assets/logo4.png" width="400px"></a>
      <div class="tit">－結帳－</div>
      <div class="link-top"></div>
      <div class="cart">
        <table id="cart">
          <tr class="carttit">
            <td style="text-align: left; width: 18%;">商品</td>
            <td style="width: 25%;"></td>
            <td style="width: 18%;">單價</td>
            <td style="width: 18%;">數量</td>
            
          </tr>
		  <%
					Object login=session.getAttribute("login");
					String sql="use `employees`";
					con.createStatement().execute(sql);
					String sql2 = "SELECT * FROM `employee` WHERE `uname`='" + login.toString() +"'"; 
					ResultSet rs =con.createStatement().executeQuery(sql2);
					rs.next();
					String sql1 = "SELECT * FROM `shopcar`";
					ResultSet rs1 =con.createStatement().executeQuery(sql1);
					int total=0;
					int x=0;
					
					while(rs1.next()){
						String a=rs1.getString("money");
						String b=rs1.getString("number");
						int price=Integer.valueOf(a);
						int num=Integer.valueOf(b);
						total+=num*price;
						x+=num;
					
					%>
          <form action="order.jsp" method="POST">
		  <tr>
            <td class="merc">
              <img src="<%=rs1.getString(3)%>" class="cartimg"><input type="hidden" name="img" value="<%=rs1.getString(3)%>"></a>
            </td>
            <td><mername><%=rs1.getString(2)%><input type="hidden" name="productname" value="<%=rs1.getString(2)%>"><%=rs1.getString(7)%><input type="hidden" name="productname2" value="<%=rs1.getString(7)%>"></a></mername></td>
            <td>NT$<%=rs1.getString(5)%><input type="hidden" name="money" value="<%=rs1.getString(5)%>"></td>
            <td><%=rs1.getString(4)%><input type="hidden" name="number" value="<%=rs1.getString(4)%>"></td>
          </tr>
          <tr><td colspan="5"><div class="link-top1" style="margin-bottom: 50px;"></div></td></tr>
		  <%}%>
          <tr class="content">
              <td colspan="5">總件數：<%=x%></td>
          </tr>
          <tr class="content">
              <td colspan="5">商品總計金額：NT$<%=total%><input type="hidden" name="sum" value="<%=total%>"></td>
          </tr>
          <tr class="content">
              <td colspan="5">付款方式：<input type="radio" value="信用卡付款" name="pay" value="pay" checked>信用卡付款<input type="radio" value="貨到付款" name="pay" value="pay">貨到付款</td>
          </tr>
          <tr class="content">
              <td colspan="5">收件人姓名：<input type="text" style="height: 25px;" value="<%=rs.getString(2)%>" name="uname"></td>
          </tr>
          <tr class="content">
              <td colspan="5">收件人地址：<input type="text" size="60" style="height: 25px;" name="address" required /></td>
          </tr>
		
        <tr class="content">
            <td colspan="5">
            <input type="submit" value="結帳" class="checkout"></a>
            </td>
        </tr>
		</form>
		
        </table>
      </div>

  </section>
    <footer>
        <div class="footer" style="margin-top: 10px;">
          <img width="280px" src="assets/logo4.png"><br>
        </div>
        <div class="footer">
          <H1>客服時間</H1><p id="footer">平日上午9:00-晚上9:00</p>
          <p class="copyright">© 2021 玩物喪新 All Rights Reserved</p>
        </div>
        <div class="footer">
          <H1>聯絡我們</H1>
          <p id="footer">+88632655401</p>
        </div>
        <div class="footer">
          <H1>地址</H1>
          <p id="footer">320桃園市中壢區中北路200號</p>
          
        </div>
        <div class="footer1">
          <a href="https://www.instagram.com/" target="_blank"><img src="assets/instagram.png" width="50px"></a>
        </div>
        <div class="footer1">
          <a href="https://www.facebook.com/" target="_blank"><img src="assets/facebook.png" width="50px"></a>
        </div>
      </footer>
  </div>
  
  <script src="assets/javascript.js"></script>      
      
</body>
</html>