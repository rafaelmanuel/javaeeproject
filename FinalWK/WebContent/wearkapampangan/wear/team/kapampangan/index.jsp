<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="">
		<title>Wear Kapampangan</title>
		<link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">
		<link id="pagestyle" rel="stylesheet" type="text/css" href="assets/css/skin-1.css">
		<link href="assets/css/style.css" rel="stylesheet">
		<script src="assets/js/pace.min.js"></script>
		<script src="assets/js/pace.min.js"></script>
	</head>
	<body>
		<!-- Header Here -->
		<jsp:include page="header.jsp" />
		
		<!--  Slider Here -->
		<jsp:include page="slider.jsp" />
		
		<!-- NEW ARRIVALS Here -->
		 <div class="container main-container">
 			<div class="row featuredPostContainer globalPadding style2">
 			
 				
				<!-- <h3 class="section-title style2 text-center"><span>NEW ARRIVALS</span></h3>-->
				
				<!-- PRODUCT ON SLIDER -->
				<!--  <div id="productslider" class="owl-carousel owl-theme"> -->
					
					<!-- ITEM Here -->
						
					<jsp:include page="new-product2.jsp" />
					
					
				<!-- </div> -->
			</div>
		</div>
		
		
		<!-- FEATURES PRODUCT Here -->
		<jsp:include page="features_product.jsp" />
 
	 	<!-- Banner At Bottom -->
		<div class="parallax-section parallax-image-2">
			<div class="w100 parallax-section-overley">
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="parallax-content clearfix">
								<h1 class="xlarge"> Wear Kapampangan SULUD ME</h1>
								<h5 class="parallaxSubtitle"></h5>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
 


		<!-- Footer Here -->
		<jsp:include page="footer.jsp" /> 
			
		<!-- Script Here -->
		<script src="../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js">
		</script> <script src="assets/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/js/jquery.cycle2.min.js"></script>
		<script src="assets/js/jquery.easing.1.3.js"></script>
	 	<script type="text/javascript" src="assets/js/jquery.parallax-1.1.js"></script>
		<script type="text/javascript" src="assets/js/helper-plugins/jquery.mousewheel.min.js"></script>
		<script type="text/javascript" src="assets/js/jquery.mCustomScrollbar.js"></script>
		<script type="text/javascript" src="assets/js/ion-checkRadio/ion.checkRadio.min.js"></script>
		<script src="assets/js/grids.js"></script>
		<script src="assets/js/owl.carousel.min.js"></script>
		<script src="assets/js/jquery.minimalect.min.js"></script>
		<script src="assets/js/bootstrap.touchspin.js"></script>
		<script src="assets/js/home.js"></script>
		<script src="assets/js/script.js"></script>
		<script>
	
		var xmlhttp = new XMLHttpRequest();
		var code = "RX7809";
		var name = "Libut Libut";
		var price = 200;
		var color = "RED";
		var size = "XL";
		var quantity = 5;
		
		function addItem(code_ , color_ , size_ , quantity_ ){
			id = "div#dog-dog a#" + code_;
			if(true){
				xmlhttp.onreadystatechange = function(){
					if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
						document.getElementById("cartItemID").innerHTML = xmlhttp.responseText;
					}
				};
				xmlhttp.open("GET","/FinalWK/add?productCode=" + code_ +"&name=" + name + "&quantity=" + quantity_ +
						"&color=" + color_ + "&size=" + size_,true);
				xmlhttp.send();
			}else{
				alert($(id).attr("name"));
			}
		}
	
</script>
		
	</body>
</html>
