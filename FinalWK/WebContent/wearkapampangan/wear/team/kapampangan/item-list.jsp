<%@ page import="com.wear.kapampangan.project.database.DBManager" %>
<%@ page import="com.wear.kapampangan.project.library.Item" %>
<%! DBManager manager = null; %>
<%! String searchName = "";%>

<% searchName = (request.getParameter("searchName") != null ? request.getParameter("searchName") : "");%>
<% manager = (DBManager) request.getServletContext().getAttribute("dbmanager");%>

<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<jsp:include page="admin-header.jsp" />
<div class="container">
      <h1>T-Shirt list</h1>
	<div class="col-xs-3">
	<input type="text" class="form-control" id="usr">
	</div>
	 <p align="right">  
	  <button type="button" class="btn btn-success">Remove</button>
	  <button type="button" class="btn btn-success">Update</button>
	  </p>
  <table class="table">
    <thead>
      <tr>
       <th>&nbsp;</th>
        <th>&nbsp;</th>
		<th>&nbsp;</th>
		<th>Product Code</th>
		<th>Name</th>
		<th>Price</th>
		<th>Image</th>
		<th>Status</th>
		<th>Quantity</th>
      </tr>
	 
    </thead>
    <tbody>
    <% if(searchName.equals("")){ %>
    <% for(Item item : manager.getItemList()){%>
	      <tr>
			  <td><input type="checkbox" name="check" value="box"></td>	
			  <td><a href="#">Update</td>
			  <td><a href="#">Remove</td>
			  <td> <%= item.getProductCode() %> </td>
			  <td><a href="#"><%= item.getName() %></td>
			  <td><%= item.getPrice() %></td>
			  <td><%= item.getImage() %></td>
			  <td><%= item.getStatus() %></td>
			  <td>Quantity</td>	  
		  </tr>
	 <%}}else{ 
	 	for(Item item : manager.getItemByNameQuery(searchName)){%>
	 		<tr>
			  <td><input type="checkbox" name="check" value="box"></td>	
			  <td><a href="#">Update</td>
			  <td><a href="#">Remove</td>
			  <td> <%= item.getProductCode() %> </td>
			  <td><a href="#"><%= item.getName() %></td>
			  <td><%= item.getPrice() %></td>
			  <td><%= item.getImage() %></td>
			  <td><%= item.getStatus() %></td>
			  <td>Quantity</td>	  
		  </tr>
	 <%}} %>
	
	 </tbody>
	  
	  
	  
	  
	  </table>
</div>

</body>
</html>
