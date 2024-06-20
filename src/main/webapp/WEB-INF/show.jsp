
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Show Expense</title>
</head>
<body style="margin: 10vw;">

<div class="d-flex justify-content-between mb-4">
	<div><h1 class="text-primary">Expense Details</h1>	</div>
	<div><a class="btn btn-outline-primary" href="/">Go back</a></div>
</div>
<table class="table table-striped">
    <tbody>
		<tr>
			<td class="fs-4">Expense Name:</td>
			<td style="padding-left: 24px;"><c:out value="${expense.name}"></c:out></td>
		</tr>
		<tr>
			<td class="fs-4">Expense Description:</td>
			<td style="padding-left: 24px;"><c:out value="${expense.description}"></c:out></td>
		</tr>
		<tr>
			<td class="fs-4">Vendor:</td>
			<td style="padding-left: 24px;"><c:out value="${expense.vendor}"></c:out></td>
		</tr>
		<tr>
			<td class="fs-4">Amount Spent:</td>
			<td style="padding-left: 24px;">$<fmt:formatNumber type="number" minFractionDigits="2" value="${expense.amount}"/></td>
		</tr>	
    </tbody>
</table>
	

</body>
</html>