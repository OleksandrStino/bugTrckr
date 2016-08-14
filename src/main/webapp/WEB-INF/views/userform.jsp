<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<c:choose>
    <c:when test="${formaction eq 'new'}">
        <c:set var="breadcrumsname" scope="session" value="Add User"/>
        <c:set var="buttonname" scope="session" value="Create"/>
    </c:when>
    <c:otherwise>
        <c:set var="breadcrumsname" scope="session" value="Update User"/>
        <c:set var="buttonname" scope="session" value="Update"/>
    </c:otherwise>
</c:choose>


<div class="breadcrumbs">
    <div class="row">
        <div class="col-sm-2 col-sm-offset-1">
            <h1 class="pull-left"> ${breadcrumsname} </h1>
        </div>
        <div class="col-sm-8">
            <ol class="pull-right breadcrumb">
                <li><a href="<spring:url value='/'/>">Home</a></li>
                <li><a href="<spring:url value='/users'/>">Users</a></li>
                <li class="active"> ${breadcrumsname} </li>
            </ol>
        </div>
    </div>
</div>


<div class="margin-top-30 row">
    <form:form action="/user/add" modelAttribute="user" method="POST">
    <div class="col-sm-12 col-md-5 col-md-offset-1">

        <spring:bind path="firstName">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <label for="firstNameInput">First name</label>
            <form:input path="firstName" type="text" class="form-control" id="firstNameInput" placeholder="First name"/>
            <form:errors path="firstName" class="control-label" />
        </div>
        </spring:bind>

        <spring:bind path="email">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <label for="emailInput">E-mail</label>
            <form:input path="email" type="email" class="form-control" id="emailInput" placeholder="E-mail"/>
            <form:errors path="email" class="control-label" />
        </div>
        </spring:bind>

        <spring:bind path="password">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <label for="passwordInput">Password</label>
            <form:input path="password" type="password" class="form-control" id="passwordInput" placeholder="Password"/>
            <form:errors path="password" class="control-label" />
        </div>
        </spring:bind>

    </div>
    <div class="col-sm-12 col-md-5">

        <spring:bind path="lastName">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <label for="lastNameInput">Last name</label>
            <form:input path="lastName" type="text" class="form-control" id="lastNameInput" placeholder="Last name"/>
            <form:errors path="lastName" class="control-label" />
        </div>
        </spring:bind>

        <spring:bind path="role">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <label for="roleInput">Role</label>
            <form:select path="role" type="text" class="form-control" id="roleInput" placeholder="Role">
                <form:option value="" label="  Select a role" />
                <form:options items="${roles}" />
            </form:select>
            <form:errors path="role" class="control-label" />
        </div>
        </spring:bind>

        <spring:bind path="confirmPassword">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <label for="confirmPasswordInput">Confirm password</label>
                <form:input path="confirmPassword" type="password" class="form-control" id="confirmPasswordInput" placeholder="Confirm password"/>
                <form:errors path="confirmPassword" class="control-label" />
            </div>
        </spring:bind>

    </div>
        <div class="col-sm-10 col-sm-offset-1">
            <label for="editor1">Description</label>
        </div>
        <div class="col-sm-10 col-sm-offset-1">
            <form:textarea path="description" cols="100" id="editor1" rows="10"></form:textarea>
        </div>

        <form:hidden path="id"/>

        <div class="col-sm-10 col-sm-offset-1">
            <input type="submit" value="${buttonname}" class="margin-top-30 btn-u pull-right" />
        </div>
    </form:form>

</div>
