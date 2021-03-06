<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:import url="/WEB-INF/common/header.jsp"/>

<c:url var="registerUrl" value="/register"/>
<form:form action="${registerUrl}" method="POST" modelAttribute="user">
    <div class="form-group">
        <label for="username">Username</label>
        <form:input class="form-control" path="username" placeholder="Username"/>
        <form:errors path="username" cssClass="bg-danger"/>
    </div>
    <div>
            <label for="email">Email</label>
			<form:input  path="email" class="form-control" placeholder="Valid@email.com"/>            
        	<form:errors path="email" cssClass="error"/>
        	<form:errors path="emailMatching" cssClass="error"/>
        </div>
        <div>
            <label for="verifyEmail">Confirm Email</label>
            <form:input  path="verifyEmail" class="form-control"/>
            <form:errors path="verifyEmail" cssClass="error"/>
        </div>
    <div class="form-group">
        <label for="password">Password</label>
        <form:password class="form-control" path="password"/>
        <form:errors path="password" cssClass="bg-danger"/>
    </div>
    <div class="form-group">
        <label for="confirmPassword">Confirm Password</label>
        <form:password class="form-control" path="confirmPassword"/>
        <form:errors path="passwordMatching" cssClass="bg-danger"/>
    </div>
     <div class="form-group">
        <label for="zipcode">Zipcode</label>
        <form:input class="form-control" path="zipcode"/>
        <form:errors path="zipcode" cssClass="bg-danger"/>
    </div>
    <fieldset>
        <legend>Role</legend>
        <form:errors path="role" cssClass="bg-danger"/>
        <div class="radio">
            <label>
                <form:radiobutton path="role" value="user" checked="checked"/>
                Junior Developer 
            </label>
        </div>
        <div class="radio">
            <label>
                <form:radiobutton path="role" value="admin"/>
                Administrator
            </label>
        </div>
        <div class="radio">
            <label>
                <form:radiobutton path="role" value="editor"/>
                Editor
            </label>
        </div>
    </fieldset>
    <button type="submit" class="btn btn-default">Save User</button>
</form:form>


