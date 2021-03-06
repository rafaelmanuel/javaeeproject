<%@ page import="com.wear.kapampangan.project.library.User" %>
<%@ page import="com.wear.kapampangan.project.library.UserInfo" %>
<%@ page import="com.wear.kapampangan.project.library.Item" %>
<%@ page import="com.wear.kapampangan.project.database.DBManager" %>
<%! User currentUser = null; %>
<%! UserInfo info_user = null; %>
<%! DBManager manager = null; %>

<% if(session.getAttribute("currentuser") != null) currentUser = (User) session.getAttribute("currentuser");%>
<% if(session.getAttribute("currentuser") == null) response.sendRedirect("/FinalWK/wearkapampangan/wear/team/kapampangan/login1.jsp");%>
<% manager = (DBManager) request.getServletContext().getAttribute("dbmanager"); %>
<% info_user = (UserInfo) manager.getUserInfoByUserId(currentUser.getId()); %>
<% if(info_user == null){
	response.sendRedirect("/FinalWK/wearkapampangan/wear/team/kapampangan/checkout-2-no-info.jsp");
}else{%>
<% if(session.getAttribute("orderInfo-shop") != null ){
		response.sendRedirect("/FinalWK/wearkapampangan/wear/team/kapampangan/checkout-5.jsp");
} %>

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
		<div class="row">
		<div class="breadcrumbDiv col-lg-12">
		<ul class="breadcrumb">
		<li><a href="index.jsp">Home</a></li>
		<li><a href="cart.jsp">Cart</a></li>
		<li class="active"> Checkout</li>
		</ul>
		</div>
		</div>
 
<div class="row">
<div class="col-lg-9 col-md-9 col-sm-7 col-xs-6 col-xxs-12 text-center-xs">
<h1 class="section-title-inner"><span><i class="glyphicon glyphicon-shopping-cart"></i> Checkout</span></h1>
</div>
<div class="col-lg-3 col-md-3 col-sm-5 rightSidebar col-xs-6 col-xxs-12 text-center-xs">
<h4 class="caps"><a href="category.html"><i class="fa fa-chevron-left"></i> Back to shopping </a></h4>
</div>
</div>
 
<div class="row">
<div class="col-lg-9 col-md-9 col-sm-12">
<div class="row userInfo">
<div class="col-xs-12 col-sm-12">
<div class="w100 clearfix">
<ul class="orderStep orderStepLook2">
<li><a><i class="fa" style="height:40px;width:100%;background:#e4e5e7;"> </i><span>&nbsp;</span> </a></li>
<li class="active"><a href="checkout-2.jsp"> <i class="fa fa-map-marker "></i> <span> address</span>
</a></li>
<li><a href="checkout-4.jsp"><i class="fa fa-money"> </i><span>Payment</span> </a></li>
<li><a href="checkout-5.jsp"><i class="fa fa-check-square "> </i><span>Order</span></a></li>
<li><a><i class="fa" style="height:40px;width:100%;background:#e4e5e7;"> </i><span>&nbsp;</span> </a></li>
</ul>
 
</div>
<div class="w100 clearfix">
<div class="row userInfo">
<div class="col-lg-12">
<h2 class="block-title-2"> To add a new address, please fill out the form below. </h2>
</div>
<form action = "/FinalWk/checkout/shipping/address" method="post">
<div class="col-xs-12 col-sm-6">
<div class="form-group required">
<label for="InputName">First Name <sup>*</sup> </label>
<input required type="text" class="form-control" id="InputName" placeholder="First Name" value='<%= (currentUser.getFirstName() != null ? currentUser.getFirstName() : "" )%>'>
</div>
<div class="form-group required">
<label for="InputLastName">Last Name <sup>*</sup> </label>
<input required type="text" class="form-control" id="InputLastName" placeholder="Last Name" value='<%= (currentUser.getLastName() != null ? currentUser.getLastName() : "") %>'>
</div>
<div class="form-group">
<label for="InputEmail">Email </label>
<input type="text" class="form-control" id="InputEmail" placeholder="Email" value='<%= (currentUser.getEmail() != null ? currentUser.getEmail() : "") %>'>
</div>
<div class="form-group required">
<label for="InputAddress">Address <sup>*</sup> </label>
<input name="address1" required type="text" class="form-control" id="address1" placeholder="Address" value='<%= (info_user.getAddress1() != null ? info_user.getAddress1() : "")%>'>
</div>
<div class="form-group">
<label for="InputAddress2">Address (Line 2) </label>
<input name="address2" type="text" class="form-control" id="address2" placeholder="Address" value='<%= (info_user.getAddress2() != null ? info_user.getAddress2() : "")%>'>
</div>
<div class="form-group required">
<label for="InputCity">City <sup>*</sup> </label>
<input name="city" required type="text" class="form-control" id="city" placeholder="City" value='<%= (info_user.getCity() != null ? info_user.getCity() : "")%>'>
</div>
</div>
<div class="col-xs-12 col-sm-6">
<div class="form-group required">
<label for="InputZip">Zip / Postal Code <sup>*</sup> </label>
<input name="zip" required type="text" class="form-control" id="zip" placeholder="Zip / Postal Code" value='<%= (info_user.getZip() != null ? info_user.getCity() : "")%>'>
</div>

<div class="form-group">
<label for="InputAdditionalInformation">Additional information</label>
<textarea rows="3" cols="26" name="additionalInfo" class="form-control" id="additionalInfo"><%= (info_user.getAdditionalInfo() != null ? info_user.getCity() : "")%></textarea>
</div>
<div class="form-group required">
<label for="InputMobile">Mobile phone <sup>*</sup></label>
<input required type="tel" name="mobileNo" class="form-control" id="mobileNo" value='<%= (info_user.getMobileNumber() != null ? info_user.getCity() : "" )%>'>
</div>



</div>
</form>
</div>
 
</div>
<div class="cartFooter w100">
<div class="box-footer">
<div class="pull-left"><a class="btn btn-default" href="index.jsp"> <i class="fa fa-arrow-left"></i> &nbsp; Back to Shop </a></div>
<div class="pull-right"><a id="buttonNext" class="btn btn-primary btn-small ">
Paying Method &nbsp; <i class="fa fa-arrow-circle-right"></i> </a></div>
</div>
</div>
 
</div>
</div>
 
</div>

<!-- Side Bar -->
<jsp:include page="side-price-bar.jsp" />
 
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
<script>
	$("#buttonNext").click(function(){
		var address1 = $("#address1").val();
		var address2 = $("#address2").val();
		var city = $("#city").val();
		var zip = $("#zip").val();
		var additionalInfo = $("#additionalInfo").val();
		var mobileNo = $("#mobileNo").val();
		
		//Validation
		if(address1 != "" && city != "" && zip != "" && mobileNo != ""){
			if(/*city.match(/^[a-zA-Z]+$/) && */ $.isNumeric(zip) && $.isNumeric(mobileNo)){
			
				window.location.href = "/FinalWK/checkout/shipping/address?address1=" + address1 + "&address2=" + address2 + "&city="+ city +"&zip=" + zip + "&additionalInfo=" + additionalInfo + "&mobileNo=" + mobileNo;
			
			}else{
				alert("Please Check Your Input\nZipCode and MobileNo must be numeric\nCity must not contain Numeric Character");
			}
		}else{
			
			alert("Invalid Input!\nPlease check your inputs\nBlank fields are invalid");
			
		}
		//Ends here
			
		
	});

</script>
</body>
<%} %>
</html>
