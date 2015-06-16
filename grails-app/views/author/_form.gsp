<%@ page import="com.advancedJquery.Author" %>
<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'name', 'error')} ">
    <label for="name">
        <g:message code="author.name.label" default="Name"/>

    </label>
    <g:textField name="name" class="required" id="name" value="${authorInstance?.name}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'email', 'error')} ">
    <label for="email">
        <g:message code="author.email.label" default="Email"/>

    </label>
    <g:textField name="email" class="required" value="${authorInstance?.email}" id="email"/>
    <input type="button" value="Check Availability" id="checkEmail"/>
</div>


<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'dateOfBirth', 'error')} required">
    <label for="datepicker">
        <g:message code="author.dateOfBirth.label" default="Date Of Birth"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField id="datepicker" class="required" name="dateOfBirth" value="${authorInstance.dateOfBirth}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'books', 'error')} ">
    <label for="books">
        <g:message code="author.books.label" default="Books"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${authorInstance?.books ?}" var="b">
            <li><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <input type="button" id="dialogButton" value="Add Book"/>
        </li>
    </ul>

</div>
