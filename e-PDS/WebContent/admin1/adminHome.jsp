<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="css/css/customadmin.css" type="text/css" media="all" />
    <link rel="stylesheet" href="css/css/style.css" type="text/css" media="all" />
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
    <script type="text/javascript" src="js/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="js/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/js/popper.min.js"></script>
    <script type="text/javascript" src="js/js/cufon-yui.js"></script>
    <script type="text/javascript" src="js/js/MyriadPro.font.js"></script>
<script type="text/javascript" src="js/js/ArialBold.font.js"></script>
    <title>Admin HomePage</title>
</head>
<body>
<div id="header">
    <div class="shell">
      <h1 id="logo"><a href="#">WCSST 37</a></h1>
      <div id="navigation">
        <ul>
        <!--  <li><a href="requests.jsp">REQUEST</a></li> -->
          <li><a href="festiveSeason.jsp">FESTIVE SEASON</a></li>
          <li><a href="addShop.jsp">ADD SHOP</a></li>
          <li><a href="allotProduct.jsp">ALLOT PRODUCT</a></li>
          <li><a href="viewAllotedStock.jsp">SHOP DETAILS</a></li>
          <li><a href="../homePage/homePage.jsp">LOGOUT</a></li>
        </ul>
      </div>
    </div>
  </div>
  <div id="intro">
  <div class="shell">
    <div class="slider-holder">
      <ul>
        <li>
          <div class="offer-image"> <img src="./css/css/images/offer-image-1.jpg" alt="" /> </div>
          <div class="offer-data">
            <h3>Special Offer</h3>
            <div class="entry">
              <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin sed odio et ante lipsum amet dorem en lobortis. Quisque eleifend, arcu a dictum varius.</p>
              <p><strong>Lorem ipsum dolor</strong> sit amet, con- sectetuer adipiscing elit. Proin sed odio et ante adipiscing lobortis. Quisque eleif- end, arcu a <a href="#">dictum</a> varius, risus neque venenatis arcu</p>
            </div>
          </div>
        </li>
      </ul>
    </div>

  </div>
</div>
<div id="main">
  <div class="shell shell_width">
    <div class="box">
      <h2>Welcome Admin</h2>
      <div class="entry">
        <div class="big-image"><img src="./css/css/images/AA.jpg" alt="" /></div>
      </div>
    </div>
    <div class="box">
      <h2>Latest News</h2>
      <div class="entry">
        <div class="news">
          <ul>
            <li>
              <div class="post-image"> <a href="#"><img src="./css/css/images/news-image-1.jpg" alt="" /></a> </div>
              <div class="post-data">
                <h5><a href="#">September 11th, 2010</a></h5>
                <p>Nam scelerisque mi ut leo eleifend imperdiet. Donec at molestie diam. Etiam quam nisi, elementum sed commodo, posuere</p>
              </div>
              <div class="cl">&nbsp;</div>
            </li>
            <li class="last">
              <div class="post-image"> <a href="#"><img src="./css/css/images/news-image-2.jpg" alt="" /></a> </div>
              <div class="post-data">
                <h5><a href="#">September 10th, 2010</a></h5>
                <p>Nam scelerisque mi ut leo eleifend imperdiet. Donec at molestie diam. Etiam quam nisi, elementum sed commodo, posuere</p>
              </div>
              <div class="cl">&nbsp;</div>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="cl">&nbsp;</div>
  </div>
</div>
<div class="footer">
  <div class="shell">
    <p class="lf">Copyright &copy; 2019 <a href="#">ePDS</a> - All Rights Reserved</p>
    <p class="rf"><a href="#">ePDS</a> by <a href="#" target="_blank">Pioneers</a></p>
    <div style="clear:both;"></div>
  </div>
</div>
</body>
</html>