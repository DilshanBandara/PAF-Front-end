<%@ page import="com.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complain management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css"> 
<script src="Components/jquery-3.4.1.min.js"></script> 
<script src="Components/valicustomer1.js"></script> 
</head>
<body>
<div class="container"> 
	<div class="row">  
		<div class="col-6">
		    <br>  <center> <h1>View customer complain</h1> </center>
		     <br><br>
		     <div id="divCustomerGrid">
					 <%
						Customer customerObj = new Customer();
						out.print(customerObj.readCustomer());
					 %>
				</div>
				<br>
			     <div id="alertSuccess" class="alert alert-success"> </div>
			    <div id="alertError" class="alert alert-danger"></div>
		   <br> 
			<center> <h3>update customer complain</h3> </center>
			<hr><br>
				<form id="formCustomer" name="formCustomer" method="post" action="Index.jsp">  
					Customer Email :  
 	 				<input id="cName" name="cName" type="text"  class="form-control form-control-sm">
					<br>Complain :   
  					<input id="cAddress" name="cAddress" type="text" class="form-control form-control-sm">   
                    <br>
					<center><input id="btnSave" name="btnSave" type="button" value="update" class="btn btn-primary"></center>
					<input type="hidden" id="hidCustomerIDSave" name="hidCustomerIDSave" value=""> 
				</form>
				
					
				 
			</div>
		</div>
</div>
 
</body>
</html>