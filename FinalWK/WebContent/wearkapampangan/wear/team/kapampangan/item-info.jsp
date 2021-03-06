<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.wear.kapampangan.project.database.DBManager"%>
<%@ page import="com.wear.kapampangan.project.library.Item"%>

<%! String productCode = ""; %>
<%! DBManager manager = null; %>
<%! Item item = null; %>
<% productCode = (request.getParameter("productCode") != null ? request.getParameter("productCode") : ""); %>
<% manager = (DBManager) request.getServletContext().getAttribute("dbmanager"); %>
<% item = manager.getItemByProductCode(productCode);%>

<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
			<style>
				.vertical-container .row {
					display: table;
					width: 100%;
				}
				.vertical-container .row > .col-lg-6 {
					display: table-cell;
					vertical-align: middle;
				}
				img.displayed {
					display: block;
					margin-left: 30px;
					margin-right: auto ;
					width:320px; 
					height: 350px; 
					border:1px solid black;
				}
				.btn-space {
					margin-right: 10px;
					margin-left: 50px;
				}
				#buttons{
				background-color: #449b44;
				color: #fff;
				width: 120px;
				margin-right: 15px;
				margin-left: 40px;
												}
				#table{ width:500px;
						margin-right: 100px;
				
				
				}
				.btn-default:{font-weight:bold;}
			</style>
<body>
<jsp:include page="admin-header.jsp" />

<div style="background-color:white;" class="well" ">
	<div class="row">
			<div class="col-lg-4 hidden-xs">
				        <div class="col-lg-11">
							<div class="form-group" Style="margin-left: 10px;">
								
								<div class="input-group">
									<input type="text" class="form-control"
										   placeholder="Search" id="usr"/>
									<span class="input-group-addon">
										<i class="fa fa-search" id="search-ok">OK</i>
									</span>
								</div>
							</div>
						</div>
				<img class="displayed" src="<%= item.getImage()%>">
					<div class="vertical-container" class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-11" style="padding-left: 40px; solid #ccc;">
									<form action="/FinalWK/image/upload?productCode=<%= item.getProductCode() %>" method="post" enctype="multipart/form-data" name="form1">
										<input type="file" name="file" size="50"/>
										<input type="submit" class="form-control btn-default " value="Save" /><br/>
									</form>
									
									
								</div>
							
							</div>
						</div>
						<input id="buttons" class="btn btn-space" value="Remove" type="button">
						<input id="buttons" class="btn btn-space" value="Update" type="button">
					</div>
			</div>
			<div class="col-lg-8 hidden-xs">
			</br>
			</br>
			</br>
			
			<table class="table table-striped " id="table">
					<thead>
					  <tr style="font-size: 30px;">
						<th>Item Information</th>
					  </tr>
					</thead>
					<tbody>
					<tr>
						<td><b>Product code</b> : <%= item.getProductCode() %></td>
					  </tr>
					  <tr>
						<td><b>Name</b>  : <%= item.getName() %></td>
					  </tr>
					  <tr>
						<td><b>Price</b> : <%= item.getPrice() %></td>
					  </tr>
					  <tr>
						<td><b>Status</b> : <%= item.getStatus() %></td>
					  </tr>
					</tbody>
				  </table>
			</div>
			</div>
			</div>
			<script>
	$(document).ready(function(){
		$("#search-ok").click(function(){
			if($("#usr").val() != ""){
				window.location.href = "/FinalWK/item/info?searchName=" + $("#usr").val();
			}
		});
	});
</script>
    
</body>
</html>

