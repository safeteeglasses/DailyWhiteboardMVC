<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/WEB-INF/common/header.jsp"/>

<h1>Whiteboarding Landing Page</h1>
<p>Practice Practice Practice</p>

<div> 
	<c:if test="${empty appCurrentUser}">
                        
                        <c:url var="registerUrl" value="register"/>
                        <a href="${registerUrl}">New User</a>
                        
   	</c:if>
</div>

