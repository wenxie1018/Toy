<!DOCTYPE html>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="config.jsp"%>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>玩物喪薪</title>
    <link rel="icon" href="assets/favicon.ico" type="image/x-icon" />
    
    <style>
        @import url(assets/main.css);
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
              <a href="shoppingcart.jsp"><button class="dropbtn">購物車</button></a>
     
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
	    
      <a href="index.jsp"><div class="logo">
        <img src="assets/logo3.gif" width="100%" style="margin-left: 0px;">
      </div></a>
        
      <div class="slideshow-container">
        <div class="mySlides fade"><a href="productoni.jsp">
          <img src="assets/一.png" style="width:80%;">
        </div>
      
        <div class="mySlides fade"><a href="productzhoushu.jsp">
          <img src="assets/二.png" style="width:80%">
        </div>
      
        <div class="mySlides fade"><a href="productmoon.jsp">
          <img src="assets/三.png" style="width:80%">
        </div>
          
         
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
          </div>
          <br>
          
          <div style="text-align:center">
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>
          </div>

          <div class="hot">
            <img src="assets/熱門商品排行榜.png" style="width: 800px;">
          </div>
          <table border="1" class="product">
            <td colspan="2">
              <a href="#" style="text-decoration: none;"><ski><span><img class="hotproimg" src="assets/鬼滅抬頭/2/0 (2)1.png" style="width: 500px; text-align: center;">
                <h3 class="tdp">鬼滅之刃 竈門禰豆子 抬頭系列 Q版造型公仔</span></ski></h3></a>
            </td>
            <tr>
              <td>
                <a href="#" style="text-decoration: none;"><ski><span><img class="hotproimg" height="400px" width="600px" src="assets/咒術特典/1/1 (1)1.png">
                <h3 class="tdp" style="margin-top: 50px;">[特典版] Kotobukiya 咒術迴戰 五條悟</span></ski></h3></a>
              </td>
              <td>
                <a href="#" style="text-decoration: none;"><ski><span><img class="hotproimg" src="assets/鬼滅抬頭/5/0 (5)1.png" style="width: 400px;">
                <h3 class="tdp">鬼滅之刃 我妻善逸 抬頭系列 Q版造型公仔</span></ski></h3></a>
              </td>
            </tr>
              
          </table>
          <div class="new">
            <img src="assets/新品專區.png" style="width: 800px;">
          </div>
          <table style="top: 300px;" border="1" class="product">
            <tr>
              <td>
                <a href="#" style="text-decoration: none;"><ski><span><img class="hotproimg" src="assets/美少女戰士/月野兔/girl 1.png" style="width: 400px;">
                <h3 class="tdp">BANDAI Super Sailor Moon 美少女戰士 月野兔</span></ski></h3></a>
              </td>
              <td>
                <a href="#" style="text-decoration: none;"><ski><span><img class="hotproimg" src="assets/蠟筆小新/吃巧克比/1 1.png" style="width: 253px;">
                <h3 class="tdp" style="margin-top: 30px;">Medicom Toy UDF 蠟筆小新 吃巧克比的小新</span></ski></h3></a>
              </td>
            </tr>
              
          </table>

          
    </section>
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
	  <div class="footer">
	    <H1>&nbsp;</H1>
	    <p id="footer">累積訪客人數:<%@ include file="counter.jsp"%></p>
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