<!DOCTYPE html>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="config.jsp"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>玩物喪薪|商品評論</title>
    <link rel="icon" href="assets/favicon.ico" type="image/x-icon" />
</head>
<style>
    @import url(assets/comment.css);
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
              <table>
                  <tr style="height:100px">
                    <td style="font-size: 50px; text-align: center; border-bottom:#8B4513 dashed 5px ;">商品評論</td>
                  </tr>
                  <tr>
                    <td>
					
                      <form style="margin-left: 15px; margin-top: 15px;" action="board.jsp" method="POST">
                        使用者名稱：<input class="input" type="text" name="uname" id="text" value=""><br><br>
                        購買商品名稱：<select class="input" style=" margin-top: 10px; width: 20%;" id="select" name="smalltit">
                          <option value="[特典版]Kotobukiya 咒術迴戰 五條悟">[特典版]Kotobukiya 咒術迴戰 五條悟</option>
                          <option value="[特典版]Kotobukiya 咒術迴戰 釘崎野薔薇">[特典版]Kotobukiya 咒術迴戰 釘崎野薔薇</option>
                          <option value="[特典版]Kotobukiya 咒術迴戰 伏黑惠">[特典版]Kotobukiya 咒術迴戰 伏黑惠</option>
                          <option value="[特典版]Kotobukiya 咒術迴戰 虎杖悠仁">[特典版]Kotobukiya 咒術迴戰 虎杖悠仁</option>
                          <option value="LOOK UP 抬頭系列 Q版造型公仔 竈門炭治郎">LOOK UP 抬頭系列 Q版造型公仔 竈門炭治郎</option>
                          <option value="LOOK UP 抬頭系列 Q版造型公仔 煉獄杏壽郎">LOOK UP 抬頭系列 Q版造型公仔 煉獄杏壽郎</option>
                          <option value="LOOK UP 抬頭系列 Q版造型公仔 竈門禰豆子">LOOK UP 抬頭系列 Q版造型公仔 竈門禰豆子</option>
                          <option value="LOOK UP 抬頭系列 Q版造型公仔 栗花落香奈乎">LOOK UP 抬頭系列 Q版造型公仔 栗花落香奈乎</option>
                          <option value="LOOK UP 抬頭系列 Q版造型公仔 嘴平伊之助">LOOK UP 抬頭系列 Q版造型公仔 嘴平伊之助</option>
                          <option value="LOOK UP 抬頭系列 Q版造型公仔 我妻善逸">LOOK UP 抬頭系列 Q版造型公仔 我妻善逸</option>
                          <option value="BANDAI S.H.Figuarts SHF 美少女戰士S 小小兔">BANDAI S.H.Figuarts SHF 美少女戰士S 小小兔</option>
                          <option value="BANDAI Super Sailor Moon 美少女戰士 月野兔">BANDAI Super Sailor Moon 美少女戰士 月野兔</option>
                          <option value="BANPRESTO 景品 QPOSKET 美少女戰士Eternal 月野兔">BANPRESTO 景品 QPOSKET 美少女戰士Eternal 月野兔</option>
                          <option value="BANPRESTO 景品 QPOSKET 美少女戰士Eternal 木野真琴">BANPRESTO 景品 QPOSKET 美少女戰士Eternal 木野真琴</option>
                          <option value="BANPRESTO 景品 QPOSKET 美少女戰士Eternal 愛野美奈子">BANPRESTO 景品 QPOSKET 美少女戰士Eternal 愛野美奈子</option>
                          <option value="Medicom Toy UDF 蠟筆小新3 吃巧克比的小新">Medicom Toy UDF 蠟筆小新3 吃巧克比的小新</option>
                          <option value="Medicom Toy UDF 蠟筆小新3 屁股走路 野原廣志 蠟筆小新">Medicom Toy UDF 蠟筆小新3 屁股走路 野原廣志 蠟筆小新</option>
                          <option value="Medicom Toy UDF 蠟筆小新3 露屁屁怪獸">Medicom Toy UDF 蠟筆小新3 露屁屁怪獸</option>
                          </select><br><br>
                    
                    <textarea name="comment" id="textarea" cols="100" rows="10" style="margin-top: 0px;" placeholder="留下你對商品的評價吧！"></textarea>
                    <input type="submit" value="送出" class="send">  
                  </form>
					  
                    </td>
                  </tr>
              </table>
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
            <script>
                var slideIndex = 1;
                showSlides(slideIndex);
          
                
                function plusSlides(n) {
                  showSlides(slideIndex += n);
                }
          
                
                function currentSlide(n) {
                  showSlides(slideIndex = n);
                }
          
                function showSlides(n) {
                  var i;
                  var slides = document.getElementsByClassName("mySlides");
                  var dots = document.getElementsByClassName("dot");
                  if (n > slides.length) {slideIndex = 1}
                  if (n < 1) {slideIndex = slides.length}
                  for (i = 0; i < slides.length; i++) {
                      slides[i].style.display = "none";
                  }
                  for (i = 0; i < dots.length; i++) {
                      dots[i].className = dots[i].className.replace(" active", "");
                  }
                  slides[slideIndex-1].style.display = "block";
                  dots[slideIndex-1].className += " active";
                }
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