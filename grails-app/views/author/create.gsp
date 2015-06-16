<%@ page import="com.advancedJquery.Author" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'author.label', default: 'Author')}"/>
        <title><g:message code="default.create.label" args="[entityName]"/></title>
        %{--<g:javascript src="jquery.validate.js"/>--}%
        <script type="text/javascript" src="${resource(dir: "js", file: "jquery.validate.js")}"></script>
        <script type="text/javascript">
            var urls = {
                checkEmailURL:"${createLink(controller: 'author', action: 'checkEmailAvailability')}",
                checkEmailJSONURL:"${createLink(controller: 'author', action: 'checkEmailAvailabilityWithJSONResponse')}",
                getAuthorListURL:"${createLink(controller: 'author', action: 'getListOfAuthors')}"
            }
        </script>

    </head>

    <body>
        <a href="#create-author" class="skip" tabindex="-1">
            <g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="list"><g:message code="default.list.label"
                                                                  args="[entityName]"/></g:link></li>
            </ul>
        </div>

        <div id="create-author" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]"/></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${authorInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${authorInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>


            <div id="tabs">
                <ul>
                    <li><a href="#tabs-1">Create</a></li>
                    <li><a href="#tabs-2">Demo</a></li>
                    <li><a href="#tabs-3">Another Demo</a></li>
                </ul>

                <div id="tabs-1">
                    <g:form name="createForm" action="save">
                        <fieldset class="form">
                            <g:render template="form"/>
                        </fieldset>
                        <fieldset class="buttons">
                            <g:submitButton name="create" class="save"
                                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
                        </fieldset>
                    </g:form>
                </div>


                <div id="dialog-message" title="Dialog Demo">
                    <div>
                        <g:form action="save">
                            <fieldset>Add Book</fieldset>
                            <fieldset class="form">
                                <g:render template="/book/form"/>
                            </fieldset>
                        </g:form>
                    </div>
                </div>

                <div id="tabs-2">
                    This is some random text to illustrate the usage of a Jquery UI Tabbed Interface. Anyways LOREM IPSUM text was so boring that
                    I decided to write down something that you guys might actually read and I can't believe that you actually fell for it.
                    Did you fall for the Tab's title - "demo" thinking that there'd be some kind of demo in here... The tab itself is a demo..... Idiot !!
                    Lets hope you kept track of some of the points discussed in the session rather than lamenting on the time you wasted reading this stuff.
                    <br/>:P
                    <br/><br/>
                    Regards <br/>
                    LOREM IPSUM

                </div>

                <div id="tabs-3">
                    Some more LOREM IPSUM ....
                </div>
            </div>
        </div>
    </body>
</html>
