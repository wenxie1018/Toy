<!DOCTYPE html>
<%@page import = "java.sql.*,java.util.*"%>
<%@page language="java" contentType="text/html"  pageEncoding="UTF-8"%>
<%@ include file="config.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>玩物喪薪|咒術迴戰</title>
    <link rel="icon" href="assets/favicon.ico" type="image/x-icon" />
    <style>
        @import url(assets/product.css);

    </style>
</head>
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
        <img class="producttit" src="assets/z.png" width="380px">
		<%
		  String sql="use `employees`";
		  con.createStatement().execute(sql);
		  String sql1="SELECT`img`,`productname`,`productname2`,`smalltit`,`location` FROM `product`WHERE`smalltit`='咒術迴戰'";
		  ResultSet rs1=con.createStatement().executeQuery(sql1);
		  
		  int i=2;
		  while(rs1.next()){
				  i++;
				  if(i%2==1){
					  out.println("<div class='product1'>");
					  out.println("<div class='product-container'>");
					  out.println("<a href='"+rs1.getString(5)+"' class='prd'>");
					  out.println("<img src='"+rs1.getString(1)+"' width='300px'>");
					  out.println("<p class='productname'>"+rs1.getString(2)+"<br>"+rs1.getString(3)+"</p>");
					  out.println("<p class='smalltit'>"+rs1.getString(4)+"</p>");
					  out.println("<button class='buttoncart'><img src='assets/trolley-cart.png' width='30px'></button>");
					  out.println("<button class='buttonfavorite'><img src='assets/favorite.png' width='30px'></button>");
					  out.println("</a>");
					  out.println("</div>");
				  }else{
				  out.println("<div class='product-container'>");
				  out.println("<a href='"+rs1.getString(5)+"' class='prd'>");
				  out.println("<img src='"+rs1.getString(1)+"' width='300px'>");
				  out.println("<p class='productname'>"+rs1.getString(2)+"<br>"+rs1.getString(3)+"</p>");
				  out.println("<p class='smalltit'>"+rs1.getString(4)+"</p>");
				  out.println("<button class='buttoncart'><img src='assets/trolley-cart.png' width='30px'></button>");
				  out.println("<button class='buttonfavorite'><img src='assets/favorite.png' width='30px'></button>");
				  out.println("</a>");
				  out.println("</div>");
				  out.println("</div>");
				  }
		  }
		  %>
		  <!--
        <div class="product1">
            <div class="product-container">
              <a href="merchandise1-1.html" class="prd">
                <img src="assets/咒術特典/1/1 (1).jpg" width="300px">
                <p class="productname">[特典版]Kotobukiya 咒術迴戰<br>五條悟</p>
                <p class="smalltit">咒術迴戰</p>
                <button class="buttoncart"><img src="assets/trolley-cart.png" width="30px"></button>
                <button class="buttonfavorite"><img src="assets/favorite.png" width="30px"></button>
              </a>
            </div>
            <div class="product-container">
              <a href="merchandise1-2.html" class="prd">
              <img src="assets/咒術特典/2/1 (2).jpg" width="300px">
                <p class="productname">[特典版]Kotobukiya 咒術迴戰<br>釘崎野薔薇</p>
                <p class="smalltit">咒術迴戰</p>
                <button class="buttoncart"><img src="assets/trolley-cart.png" width="30px"></button>
                <button class="buttonfavorite"><img src="assets/favorite.png" width="30px"></button>
              </a>
            </div>
        </div>
        <div class="product1">
            <div class="product-container">
              <a href="merchandise1-3.html" class="prd">
              <img src="assets/咒術特典/3/1 (3).jpg" width="300px">
                <p class="productname">[特典版]Kotobukiya 咒術迴戰<br>伏黑惠</p>
                <p class="smalltit">咒術迴戰</p>
                <button class="buttoncart"><img src="assets/trolley-cart.png" width="30px"></button>
                <button class="buttonfavorite"><img src="assets/favorite.png" width="30px"></button>
              </a>
            </div>
            <div class="product-container">
              <a href="merchandise1-4.html" class="prd">
              <img src="assets/咒術特典/4/1.jpg" width="300px">
                <p class="productname">[特典版]Kotobukiya 咒術迴戰<br>虎杖悠仁</p>
                <p class="smalltit">咒術迴戰</p>
                <button class="buttoncart"><img src="assets/trolley-cart.png" width="30px"></button>
                <button class="buttonfavorite"><img src="assets/favorite.png" width="30px"></button>
              </a>
            </div>
        </div>
		-->
    </section>
    <footer>
        <div class="footer">
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