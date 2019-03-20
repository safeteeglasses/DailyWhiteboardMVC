<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/WEB-INF/common/header.jsp"/>


<h2>DailyWhiteboarding</h2>
<c:url value="/easy" var="easyUrl"/>
	
	<form action="${easyUrl}" method="POST">
	<input type="submit" name="start" value="start"/>
	</form>
	<p></p>
	
	<c:forEach var="easy" items="${easy}">
	<p>${easy.name}</p>
	<p>Exercise #${easy.problemId}</p>
		</c:forEach>

	<form>
	<textarea rows="15" cols="100"></textarea>
	</form>
	
	
	<c:url value="/easy" var="easyUrl"/>
	
	<form action="${easyUrl}" method="POST">
	<input type="submit" name="finish" value="Show Solution" />
	</form>
	<p></p>
	<c:forEach var="easy" items="${easy}">
	<img src="img/${easy.problemId}.png">
	</c:forEach>
	