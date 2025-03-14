<!DOCTYPE html>
<%@page import = "java.sql.*,java.util.*"%>
<%@page language="java" contentType="text/html"  pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>玩物喪薪|[特典版]Kotobukiya 咒術迴戰 虎杖悠仁</title>
    <link rel="icon" href="assets/favicon.ico" type="image/x-icon" />
    <style>
        @import url(assets/mer.css);  
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
              <a href="shoppingcart.jsp"><button class="dropbtn" style="color: black;">購物車</button></a>
              
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
    
    <section style="height: 900px;">
        <div class="logo" style="margin-bottom: 20px;">
          <img src="assets/logo4.png" width="400px"  >
        </div>

        <div class="slideshow-container">

            <div class="mySlides fade">
              <img src="assets/咒術特典/4/1.jpg" style="width:100%">
            </div>
                                             
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>

        </div>
          <br>
          
          <div style="text-align:left; margin-left: 28%;">
            <span class="dot" onclick="currentSlide(1)"></span>
            
          </div>

          <div class="productname">
            <h1>[特典版]Kotobukiya 咒術迴戰 虎杖悠仁</h1><br>
            <p class="money">NT$4,450</p><br>
            <ul class="btn-numbox">
                <li><span class="number" style="margin-left: 280px;"><h3>數量：</h3></span></li>
                <li>
                    <ul class="count" style="margin-left: 25px;">
                        <li><span id="num-jian" class="num-jian">－</span></li>
                        <li><input type="text" class="input-num" id="input-num" value="0" style="width: 200px;"/></li>
                        <li><span id="num-jia" class="num-jia">+</span></li>
                    </ul>
                </li>
                <li><span class="kucun">（庫存:46）</span></li>
    　　　  </ul>
    <input type="button" value="🛒加入購物車" class="cart">
    <input type="button" value="立即購買" class="buy"><br>
    <input type="button" value="❤加入最愛" class="like">
    <div style="margin-left: 25px; margin-top: 10px; color: grey;">
        <p style="font-size: 20px; margin-bottom: 5px;">商品特色：</p>
        <ul style="list-style-type: disc; margin-left: 30px;">
            <li>●特典有替換臉零件*1</li>
            <li>●帥氣擺件</li>
        </ul>
    </div>
    </div>
    </section>
    <div class="com">
      <abmer>商品詳情</abmer>
      <div class="link-top"></div>
      <div style="text-align: center;">
      <img src="assets/咒術特典/4/1.jpg" class="merimg"><P>
      <img src="assets/咒術特典/4/2.jpg" class="merimg"><p>
      <img src="assets/咒術特典/4/3.jpg" class="merimg"><p>
      <img src="assets/咒術特典/4/4.jpg" class="merimg"><p>
      <img src="assets/咒術特典/4/5.jpg" class="merimg" style="margin-bottom: 30px;">
      </div>
      <div class="link-top"></div>
      <form style="text-align: left; margin-left: 50px;">
        <a href="viewwall.jsp"><com>商品評論</com><br></a>    
      </form>
      
              <div class="link-top"></div>
    </div>
    <footer>
      <a href="index.jsp"><div class="footer" style="margin-top: 15px;">
        <img width="280px" src="assets/logo4.png"><br>
      </div></a>
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
  
  <script src="assets/javascript.js" ></script>  
      
</body>
</html>