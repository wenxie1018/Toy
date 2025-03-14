<!DOCTYPE html>
<%@page import = "java.sql.*,java.util.*"%>
<%@page language="java" contentType="text/html"  pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>玩物喪薪|會員中心</title>
</head>
<style>
    @import url(assets/user.css);
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
            <%
			Object login=session.getAttribute("login");
		  String sql="use `employees`";
		  con.createStatement().execute(sql);
		  String sql1="SELECT`uname`,`email`,`phone`,`password`,`address1`,`address2` FROM `employee`where`uname`='"+login.toString()+"' ";
		  ResultSet rs1=con.createStatement().executeQuery(sql1);
		  if(rs1.next()){
		  %>
              <button onclick="openclose(event, 'profile')" class="usertit" style="margin-top: 10%; border-top: none;">會員資料</button>
                <div class="user-container" id="profile">
                  <form class="inform" action="update_member.jsp" method="POST">
                    <h3>更改會員基本資料</h3><br>
                    <p>會員姓名</p><input class="input1" type="text" name="uname"value="<%=rs1.getString(1)%>">
                    <p>電子郵件</p><input class="input1" type="text" name="email"value="<%=rs1.getString(2)%>">
                    <p>手機號碼</p><input class="input1" type="text" name="phone"value="<%=rs1.getString(3)%>">
                    <p>聯絡地址</p>
                    <select class="input1" style=" margin-top: 10px; width: 20%;" name="address1" value="<%=rs1.getString(5)%>">
                      <option value="臺北市">臺北市</option>
                      <option value="新北市">新北市</option>
                      <option value="桃園市">桃園市</option>
                      <option value="臺中市">臺中市</option>
                      <option value="臺南市">臺南市</option>
                      <option value="高雄市">高雄市</option>
                      <option value="基隆市">基隆市</option>
                      <option value="嘉義市">嘉義市</option>
                      <option value="新竹市">新竹市</option>
                      <option value="新竹縣">新竹縣</option>
                      <option value="苗栗縣">苗栗縣</option>
                      <option value="彰化縣">彰化縣</option>
                      <option value="南投縣">南投縣</option>
                      <option value="雲林縣">雲林縣</option>
                      <option value="嘉義縣">嘉義縣</option>
                      <option value="屏東縣">屏東縣</option>
                      <option value="宜蘭縣">宜蘭縣</option>
                      <option value="花蓮縣">花蓮縣</option>
                      <option value="臺東縣">臺東縣</option>
                      <option value="澎湖縣">澎湖縣</option>
                      <option value="金門縣">金門縣</option>
                      <option value="連江縣">連江縣</option>
                  </select>
		  
                  <input class="input1" type="text" value="<%=rs1.getString(6)%>" name="address2">

                  <h3>修改密碼</h3><br>
                  <p>請輸入舊密碼</p><input class="input1" type="password" value="<%=rs1.getString(4)%>" name="password">
                  <p>請輸入新密碼</p><input class="input1" type="password"><br>
				
                  <input class="submitbut" type="submit" value="送出修改資料">
                  </form>
                </div>
			
              <button onclick="openclose(event, 'Order')" class="usertit" >訂單資訊</button>
                <div class="user-container" id="Order">
                  <p class="inform">您尚未有歷史訂單</p>
                </div>
              <button onclick="openclose(event, 'discount')" class="usertit" >優惠券</button>
                <div class="user-container" id="discount">
                  <p class="inform">您尚未持有優惠券</p>
                </div>
              <button onclick="openclose(event, 'favorite')" class="usertit" >收藏清單</button>
                <div class="user-container" id="favorite">
                  <div class="product-container2">
                    <a href="index.html" ><img src="assets/咒術特典/3/1 (3).jpg" width="300px"></a>
                      <p class="productname">[特典版]Kotobukiya 咒術迴戰<br>伏黑惠</p>
                      <p class="smalltit">咒術迴戰</p>
                      <button class="buttoncart"><img src="assets/trolley-cart.png" width="30px"></button>
                      <button class="buttonfavorite"><img src="assets/favorite.png" width="30px"></button>
                  </div>
                </div>
              <button style="border-bottom:#ffffff solid 3px ;" onclick="openclose(event, 'always')" class="usertit" >常用收件資訊</button>
                <div class="user-container" id="always">
                  <form class="inform">
                      <h3>常用收件方式</h3><input name="pick" type="radio" value="convenientstore">超商取貨<input style="margin: 10px;" name="pick" type="radio" value="home">宅配
                      <h3>常用超商取貨門市</h3><br>
                      <p>地區</p>      
                      <select class="input1" style=" margin-top: 10px; width: 20%;" value="<%=rs1.getString(5)%>">
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
                    <input style="margin: 10px;" name="convenientstore" type="radio" value="family">全家<input style="margin: 10px;" name="convenientstore" type="radio" value="7-11">7-11<input style="margin: 10px;" name="convenientstore" type="radio" value="OK">OK Mart<input style="margin: 10px;" name="convenientstore" type="radio" value="laierfu">萊爾富
                    <p>門市名稱</p>
                    <input class="input1" type="text">
                      <h3>常用宅配收貨地址</h3><br><input class="input1" type="text" value="<%=rs1.getString(6)%>">
                      <input class="submitbut" type="submit" value="送出修改資料">
                  </form>
                </div>
             <%}%>   
     
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
		  <script>
            var acc = document.getElementsByClassName("usertit");
                var i;
                for (i = 0; i < acc.length; i++) {
                  acc[i].addEventListener("click", function() {
                    this.classList.toggle("active");
                    var panel = this.nextElementSibling;
                    if (panel.style.display === "block") {
                      panel.style.display = "none";
                    } else {
                      panel.style.display = "block";
                    }
                  });
                }
              
                var acc = document.getElementsByClassName("usertit");
                var i;
                
                for (i = 0; i < acc.length; i++) {
                  acc[i].addEventListener("click", function() {
                    this.classList.toggle("active");
                    var panel = this.nextElementSibling;
                    if (panel.style.maxHeight) {
                      panel.style.maxHeight = null;
                    } else {
                      panel.style.maxHeight = panel.scrollHeight + "px";
                    }
                  });
                }
          </script>
          
          <script src="assets/javascript.js"></script>
              
</body>
</html>