<%@ page isErrorPage="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPEhtml>
<html>
<head>
	<title>Error Page</title>
</head>
<body>
	<h1>An error occurred</h1>
	
	<p><strong>Request URI:</strong>${requestScope["jakarta.servlet.error.request_uri"]}</p>
	<p><strong>Status Code:</strong>${requestScope["jakarta.servlet.error.status_code"]}</p>
	<c:if test="${not empty requestScope['jakarta.servlet.error.exception']}">
		<p><strong>Exception:</strong><%=exception.getClass().getName()%></p>
		<p><strong>ExceptionMessage:</strong><%=exception.getMessage()%></p>
		</c:if>
		<c:if test="${emptyrequestScope['jakarta.servlet.error.exception']}">
			<p><strong>ErrorMessage:</strong>${requestScope["jakarta.servlet.error.message"]}</p>
		</c:if>
</body>
</html>