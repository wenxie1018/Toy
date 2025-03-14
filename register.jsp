<!DOCTYPE html>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>玩物喪新|會員註冊</title>
    <style>
        @import url(assets/main.css);
        @import url(assets/joinus.css);
    </style>
</head>
<body id="body1">
  <div id="main">
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
          <button class="header" style="border: none; background:none;"><a style="color: black; text-decoration: none;" href="user.jsp">會員中心</a></button>
		  <%
		  if(session.getAttribute("access")=="M")
		  {%>
			  <button class="header" style="border: none; background:none;"><a style="color: black; text-decoration: none;" href="back.jsp">後台</a></button>
		  <%}%>
          <h2 style="margin-left:80px ; margin-top: 5px;"><a style="color: black; text-decoration: none;" href="index.jsp">玩物喪薪</a></h2>
          
    </header>
    <section>
        
        
        <h2 class="join">加入我們-會員註冊</h2>
        <form class="joinform" method="post" action="add.jsp">
          <div class="form-container">
            <h3>Member SIGNUP 會員註冊</h3>
            <label for="uname"><b>您的姓名 Username</b></label><br>
            <input style="float: left;" id="joininput" type="text" name="uname"><input type="radio" name="sex" value="先生">先生<input type="radio" name="sex" value="小姐">小姐<br><br>
            <label for="email"><b>電子郵件 Email</b></label> 
            <input id="joininput" type="text" name="email"><br>
            <label for="phone"><b>電話 phone number</b></label> 
            <input id="joininput" type="text" name="phone"><br>
            <label for="password"><b>設定用戶密碼 Password</b></label> 
            <input id="joininput" type="password" name="password"><br>
            <label for="check"><b>密碼確認 checkpassword</b></label> 
            <input id="joininput" type="password" name="check"><br>
            <label for="address"><b>聯絡地址 address</b></label> <br>
            <select style=" margin-top: 10px; width: 20%;" name="address1">
                <option>臺北市</option>
                <option>新北市</option>
                <option>桃園市</option>
                <option>臺中市</option>
                <option>臺南市</option>
                <option>高雄市</option>
                <option>基隆市</option>
                <option>嘉義市</option>
                <option>新竹市</option>
                <option>新竹縣</option>
                <option>苗栗縣</option>
                <option>彰化縣</option>
                <option>南投縣</option>
                <option>雲林縣</option>
                <option>嘉義縣</option>
                <option>屏東縣</option>
                <option>宜蘭縣</option>
                <option>花蓮縣</option>
                <option>臺東縣</option>
                <option>澎湖縣</option>
                <option>金門縣</option>
                <option>連江縣</option>
            </select>
            <input style="float: left;" id="joininput" type="text" name="address2"><br>
            
            <input class="submitbut" type="submit" value="送出資料">
          </div>
        </form>
        

          
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