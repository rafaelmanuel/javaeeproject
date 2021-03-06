<%@ page import="com.wear.kapampangan.project.library.User" %>
<%@ page import="com.wear.kapampangan.project.library.UserInfo" %>
<%@ page import="com.wear.kapampangan.project.library.Item" %>
<%@ page import="com.wear.kapampangan.project.library.Product" %>
<%@ page import="com.wear.kapampangan.project.database.DBManager" %>
<%@ page import="java.util.List" %>
<%! User currentUser = null; %>
<%! UserInfo info_user = null; %>
<%! DBManager manager = null; %>
<%! int orderNo = 0; %>
<% if(session.getAttribute("currentuser") != null) currentUser = (User) session.getAttribute("currentuser");%>
<% if(session.getAttribute("currentuser") == null) response.sendRedirect("/FinalWK/wearkapampangan/wear/team/kapampangan/login1.jsp");%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Wear Kapampangan</title>
 		<link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">
 		<link id="pagestyle" rel="stylesheet" type="text/css" href="assets/css/skin-1.css">
 		<link href="assets/css/style.css" rel="stylesheet">
	</head>
	<body>
		<jsp:include page="header.jsp" />

		<div class="container main-container headerOffset">
<div class="row innerPage">
<div class="col-lg-12 col-md-12 col-sm-12">
<div class="row userInfo">
<div class="col-xs-12 col-sm-12">
<h1 class=" text-left border-title"> Terms and Conditions </h1>
<p><strong> Please read the following terms and conditions very carefully as your use of service is
subject to your acceptance of and compliance with the following terms and conditions
("Terms"). </strong></p>
<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec fringilla diam. Quisque sed
sagittis sem. Nulla ultrices tortor eu ligula pulvinar rutrum. Sed euismod, turpis posuere
feugiat lacinia, velit tortor elementum eros, sit amet consectetur risus est varius mi.
Curabitur sit amet </p>
<hr>
<div class="w100 clearfix">
<h3> Introduction </h3>
<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus risus nisl, fringilla
vitae orci non, mollis dapibus dui. Vestibulum ante ipsum primis in faucibus orci luctus et
ultrices posuere cubilia Curae; Etiam quis vestibulum nunc. Nam malesuada leo vel nibh
ullamcorper varius. In hac habitasse platea dictumst. Pellentesque adipiscing nulla ut justo
facilisis, et aliquam ipsum cursus. Nunc ullamcorper cursus ipsum. Nullam dictum, justo a
pellentesque tempor, diam risus mollis massa, ac adipiscing orci diam egestas eros. </p>
<hr>
<h3> User Account, Password, and Security: </h3>
<p> Vivamus luctus egestas convallis. Vestibulum arcu sapien, consequat a urna a, gravida
molestie est. Mauris iaculis felis id elit laoreet, vitae blandit odio lacinia. Etiam
viverra arcu lobortis semper posuere. Curabitur mattis a erat at ultricies. Duis ac porta
est, non rhoncus orci. Sed venenatis, nunc sit amet eleifend consequat, nibh leo laoreet
purus, id pretium purus quam quis magna. Nullam mollis velit eu velit congue, quis facilisis
tortor vestibulum. Sed malesuada nibh vitae neque pulvinar pretium. Nullam fermentum aliquet
metus ac sollicitudin. </p>
<hr>
<h3> Privacy Policy: </h3>
<p> Duis eu massa diam. Donec in porta tortor, in pharetra velit. Nunc at justo convallis,
tempor tortor non, tempus mauris. Integer tristique nisl hendrerit, rhoncus odio a, semper
risus. Integer vehicula tempus porttitor. Praesent odio nibh, commodo vel posuere non,
rhoncus id augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus pretium
eros sit amet gravida blandit. Suspendisse potenti. Integer interdum facilisis urna, nec
condimentum dolor consequat at. Etiam eu elit adipiscing, ultricies elit a, tincidunt felis.
Proin lobortis auctor lectus, id vestibulum felis tincidunt a. Quisque molestie euismod
diam, sit amet condimentum ligula pellentesque a. </p>
<hr>
<h3> User Conduct and Rules: </h3>
<p> Donec sit amet convallis est. Morbi molestie, est sed viverra vehicula, ligula sem egestas
urna, vel porta erat purus nec quam. Nunc ac iaculis sem. Aenean varius augue quam, et
fringilla turpis porta mollis. Pellentesque quis cursus erat, a molestie neque. Fusce sed
magna eu purus rhoncus fermentum. Cras non arcu ac metus volutpat varius. Duis id eros ac
felis sodales ornare. </p>
<p> Duis eu massa diam. Donec in porta tortor, in pharetra velit. Nunc at justo convallis,
tempor tortor non, tempus mauris. Integer tristique nisl hendrerit, rhoncus odio a, semper
risus. Integer vehicula tempus porttitor. Praesent odio nibh, commodo vel posuere non,
rhoncus id augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus pretium
eros sit amet gravida blandit. Suspendisse potenti. Integer interdum facilisis urna, nec
condimentum dolor consequat at. Etiam eu elit adipiscing, ultricies elit a, tincidunt felis.
Proin lobortis auctor lectus, id vestibulum felis tincidunt a. Quisque molestie euismod
diam, sit amet condimentum ligula pellentesque a. </p>
<hr>
<h3> Shipping: </h3>
<p> Etiam tempus sodales luctus. Nam mattis ipsum id magna sollicitudin, et ullamcorper neque
eleifend. Integer at augue et purus facilisis ultrices. Mauris aliquet rutrum suscipit.
Morbi quis nulla eget quam tempus aliquam in pretium purus. Aliquam porttitor, magna eu
euismod lacinia, diam neque facilisis arcu, sit amet condimentum massa turpis vel nisl.
Suspendisse lobortis lorem mollis, sodales magna non, eleifend neque. Vestibulum vulputate
nibh et lacus luctus venenatis. Mauris pulvinar ultrices libero, interdum convallis urna
dapibus sed. Sed libero ligula, ultricies non pharetra at, ullamcorper sed quam. </p>
<hr>
<h3> Delivery: </h3>
<p> sit amet condimentum massa turpis vel nisl. Suspendisse lobortis lorem mollis, sodales magna
non, eleifend neque. Vestibulum vulputate nibh et lacus luctus venenatis. Mauris pulvinar
ultrices libero, interdum convallis urna dapibus sed. Sed libero ligula, ultricies non
pharetra at, ullamcorper sed quam. </p>
<hr>
<h3> Customer : </h3>
<p></p>
<ul class="list-dot">
<li> Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
<li> Phasellus dignissim eros id nibh lacinia, ac mollis odio vulputate.</li>
<li> Pellentesque sed nibh facilisis, auctor eros sit amet, ultricies ipsum.</li>
<li> Sed vitae sem varius risus imperdiet pulvinar.</li>
</ul>
<p></p>
<p></p>
<ul class="list-dot">
<li> Phasellus molestie nisl ultricies neque auctor, eget iaculis justo ultrices.</li>
<li> Vivamus mattis sapien id nisl bibendum, id scelerisque enim faucibus.</li>
<li> Proin ornare odio feugiat urna cursus placerat.</li>
<li> Sed at mi quis quam ornare varius a at ligula.</li>
</ul>
<p></p>
<p></p>
<ul class="list-dot">
<li> Fusce nec augue et libero mattis venenatis nec quis arcu.</li>
<li> Nulla mollis neque a orci cursus scelerisque.</li>
<li> Nullam eu enim ut lectus sodales commodo eu ut lorem.</li>
<li> Donec et enim pellentesque, faucibus mauris eu, euismod enim.</li>
</ul>
<p></p>
<p>
<hr>
<h3> Cancellation of Bulk Orders : </h3>
<p></p>
<ul class="list-number">
<li> Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
<li> Phasellus dignissim eros id nibh lacinia, ac mollis odio vulputate.</li>
<li> Pellentesque sed nibh facilisis, auctor eros sit amet, ultricies ipsum.</li>
<li> Sed vitae sem varius risus imperdiet pulvinar.</li>
<li> Phasellus molestie nisl ultricies neque auctor, eget iaculis justo ultrices.</li>
<li> Vivamus mattis sapien id nisl bibendum, id scelerisque enim faucibus.</li>
<li> Proin ornare odio feugiat urna cursus placerat.</li>
<li> Sed at mi quis quam ornare varius a at ligula.</li>
</ul>
<hr>
</div>
</div>
</div>
 
</div>
</div>
 
<div style="clear:both"></div>
</div>

		
<div class="gap"></div>

<jsp:include page="footer.jsp" />
<script src="../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
 
<script type="text/javascript" src="assets/js/jquery.parallax-1.1.js"></script>
 
<script type="text/javascript" src="assets/js/helper-plugins/jquery.mousewheel.min.js"></script>
 
<script type="text/javascript" src="assets/js/jquery.mCustomScrollbar.js"></script>
 
<script type="text/javascript" src="assets/plugins/icheck-1.x/icheck.min.js"></script>
 
<script src="assets/js/grids.js"></script>
 
<script src="assets/js/owl.carousel.min.js"></script>
 
<script src="../../../../cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/js/select2.min.js"></script>
 
<script src="assets/js/bootstrap.touchspin.js"></script>
 
<script src="assets/js/script.js"></script>
<script type="text/javascript">
</script>

</body>
</html>