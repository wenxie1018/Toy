<!DOCTYPE html>
<%@page import = "java.sql.*,java.util.*"%>
<%@page language="java" contentType="text/html"  pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>玩物喪薪|關於我們</title>
    <link rel="icon" href="assets/favicon.ico" type="image/x-icon" />
</head>
<style>
    @import url(assets/contact.css);
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
                      <div class="dropdown-content">
                        <div class="shopping"><img src="assets/hotproduct/gojio.jpg" width="100px"><a href="#">景品 咒術迴戰 五條悟</a></div>
                        <div class="shopping"><img src="assets/hotproduct/gojio.jpg" width="100px"><a href="#">景品 咒術迴戰 五條悟</a></div>
                        <div class="shopping"><img src="assets/hotproduct/gojio.jpg" width="100px"><a href="#">景品 咒術迴戰 五條悟</a></div>
                      </div>
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
              <div class="form-container">
                
                  <h1>若您對我們的商品有疑問，歡迎聯絡我們及給予我們建議!♥</h1>
                  <p class="teladress">Tel:+886 32655401</p>
                  <p class="teladress">郵寄地址:320 桃園市中壢區中北路200號 玩物喪薪有限公司</p>
                  <p class="teladress">Email:playcycu@gmail.com</p>
                  <form action="mailto:wendy20020213@gmail.com" method="post" subject="contact" enctype="text/plain">
                    <textarea placeholder="請輸入文字" name="contactus" class="textarea" ></textarea>
                    <input class="contactbut" type="submit" value="送出">
                </form>
              </div>
              <h1 class="h1">♡成員介紹♡</h1>
              <div class="introduce">
                
                <div class="members">
                  <a href="https://www.instagram.com/ylen0000/" target="_blank"><img class="img" src="assets/yen.jpg" width="200px"></a>
                  <p class="member">資管二甲 林晏羽</p>
                  <p class="member2">前端設計</p>
                </div>
                <div class="members">
                  <a href="https://www.instagram.com/wow._.yuri/" target="_blank"><img class="img"  src="assets/yu.jpg" width="200px"></a>
                  <p class="member">資管二甲 林恆伃</p>
                  <p class="member2">前端設計</p>
                </div>
                <div class="members">
                  <a href="https://www.instagram.com/huang_10_18/" target="_blank"><img class="img"  src="assets/jie.jpg" width="200px"></a>
                  <p class="member">資管二乙 黃文頡</p>
                  <p class="member2">後端設計</p>
                </div>
                <div class="members">
                  <a href="https://www.instagram.com/kunruih/" target="_blank"><img class="img"  src="assets/hua.jpg" width="200px"></a>
                  <p class="member">資管二乙 黃昆睿</p>
                  <p class="member2">後端設計</p>
                </div>
                
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
          
            <script src="assets/javascript.js"></script>
          
</body>
</html>