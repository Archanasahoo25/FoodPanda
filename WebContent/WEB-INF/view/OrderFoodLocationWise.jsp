<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.foodDeliverySystem.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FOOD DELIVERY SYSTEM</title>

<script>
	
</script>
<style>
a{
color: #FF0000;
}
</style>
<script type="text/javascript">
	function Validate(){
		var e = document.getElementById("Location");
		var strUser = e.options[e.selectedIndex].value;
		if(strUser==""){
			alert("Please Select Location!!!!");	
			return false;
		}
		return true;
	}

</script>
</head>
<body background="${pageContext.request.contextPath}/images/menu.jpg">
<center>
<b><H1>FOOD DELIVERY SYSTEM</H1></b>

	<form
		action="${pageContext.request.contextPath}/restaurantListLocationWise"
		method="post">
		<b><label for="Location">Choose Location:</label></b><select name="Location"
			id="Location">
			<option value="">--Select--</option>
			<option value="thoraipakam">Thoraipakam</option>
			<option value="perungudi">Perungudi</option>
			<option value="shollignalur">Shollinganalur</option>
			<option value="navalur">Navalur</option>
		</select> <input type="submit" name="submit" onclick="return Validate();"/>
		<input type="hidden" id="mobileNumber" name="mobileNumber" value="${mobile}" />
	</form>
	&nbsp
	&nbsp
	&nbsp
	&nbsp
	&nbsp
	&nbsp
	&nbsp
	<c:if test="${not empty resturant}">
		<div id="restList">
			<table width="50%">
				<tr>
					<th>Serial no.</th>
					<th>Restaurant name</th>
					<th>Type</th>
				</tr>
				<c:forEach items="${resturant}" var="listvalue"  varStatus="status">
					<tr>
						<td align="center"><b>${status.count}</b></td>
						<input type="hidden" id="restaurantId" name="restaurantId" value="${listvalue.restaurantId}"/>
						<td><a href="${pageContext.request.contextPath}/showRestaurantItem/id= ${listvalue.typee}"/><b>${listvalue.restaurantName}</b></td>
						<td><b>${listvalue.typee}</b></td>
						<input type="hidden" id="typee" name="typee" value="${listvalue.typee}"/>
						
					</tr>
				</c:forEach>

			</table>
		</div>
	</c:if>
<br>	
<br>
<br>
<br>
<br>	
<br>
<br>
<br>
<br>	
<br>
<br>
<br>
<br>	
<br>
<br>
<br>	
<b><a href="/FoodDeliverySystem/loginSubmit">Back</a></b> 
</center>
</body>
</html>