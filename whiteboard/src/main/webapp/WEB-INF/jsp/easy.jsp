<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/WEB-INF/common/header.jsp"/>


<h2>DailyWhiteboarding</h2>
<c:url value="/easy" var="easyUrl"/>
	
	<form action="${easyUrl}" method="POST">
	<input id="start" type="submit" name="start" value="start"/>
	</form>
	<p></p>
	<p></p>
	<c:forEach var="easy" items="${easy}">
	<p>${easy.name}</p>
	<p>Exercise #${easy.problemId}</p>
	
		</c:forEach>
	<head>
<link href="https://fonts.googleapis.com/css?family=Permanent+Marker" rel="stylesheet">
</head>
	<form>
	<textarea id ="blackboard" rows="18" cols="100" onkeydown="if(event.keyCode===9){var v=this.value,s=this.selectionStart,e=this.selectionEnd;this.value=v.substring(0, s)+'\t'+v.substring(e);this.selectionStart=this.selectionEnd=s+1;return false;}"></textarea>
	</form>
	
	
	<c:url value="/easy" var="easyUrl"/>
	
	<form action="${easyUrl}" method="POST">
	<input id="show-solution" type="submit" name="finish" value="Show Solution" />
	</form>
	
	<p></p>
	
	<c:forEach var="easy" items="${easy}">
	<img src="img/${easy.problemId}.png">
	</c:forEach>
	