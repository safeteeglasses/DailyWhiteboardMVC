<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/WEB-INF/common/header.jsp"/>

<h1>Whiteboarding problems</h1>


	<c:url value="/easy" var="easyUrl"/>
	<form action="${easyUrl}" method="GET">
	<input type="submit" name="easy" value="Easy"/>
	</form>
	<p>Simple warmup problems to get started. </p>
	 
	<c:url value="/medium" var="mediumUrl"/>
	<form action="${mediumUrl}" method="GET">
	<input type="submit" name="medium" value="Medium"/>
	</form>
	<p>Moving on from the warmups. AAA level
	
	<c:url value="/hard" var="hardUrl"/>
	<form action="${hardUrl}" method="GET">
	<input type="submit" name="hard" value="Hard"/>
	</form>
	<p>Masters of the craft. Ready for the big leagues? 
	