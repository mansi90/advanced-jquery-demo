<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>DEMO Page</title>
    <style type="text/css">
    .green-button, .green-button:focus {
        background: green;
        border: 1px solid green;
        color: #ffffff;
    }

    .main-section {
        padding: 20px;
    }

    .main-section .inner-section {
        float: left;
    }

    .main-section .inner-section {
        width: 45%;
    }

    .main-section .inner-section:first-of-type {
        width: 20%;
    }

    .main-section .inner-section:last-of-type {
        width: 35%;
    }

    .main-section .inner-section p {
        padding: 10px;
    }

    .main-section .inner-section .top-inner-section {
        height: 100px;
    }

    .main-section .inner-section .top-inner-section input[type=text] {
        width: 200px;
    }

    .main-section .inner-section .top-inner-section input[type=button] {
        width: 90px;
        margin-top: 18px;
        float: right;
        margin-right: 100px;
    }

    .main-section .inner-section .middle-inner-section {
        height: 175px;
    }

    .main-section .inner-section .middle-inner-section #my-listing {
        padding: 40px;
    }

    .main-section .inner-section .middle-inner-section input[type=button] {
        width: 140px;
        margin-top: 18px;
        margin-left: 20px;
    }

    .main-section .inner-section .bottom-inner-section {
        padding-top: 18px;
        padding-left: 20px;
        height: 200px;
    }

    .main-section .inner-section .bottom-inner-section input[type=button] {
        width: 140px;
    }

    .block {
        background-color: blue;
        width: 150px;
        height: 70px;
        margin: 20px 0;
    }

    </style>
    <asset:javascript src="demo.js"/>
</head>

<body>
<div class="main-section">
    <div class="inner-section">
        <p>Paragraph One</p>

        <p>Paragraph Two</p>

        <p>Paragraph Three</p>

        <p>Paragraph Four</p>

        <p>Paragraph Five</p>

        <p>Paragraph Six</p>
    </div>

    <div class="inner-section">
        <div class="top-inner-section">
            <label>Test Your Ajax Call ?</label>
            <input name="someText" type="text"><br/>
            <input type="button" onclick="ajaxCallDemo(this)" value="SUBMIT" class="green-button"
                   data-ajax-url="${createLink(controller: 'util', action: 'demoMyAjax')}">
        </div>

        <div class="middle-inner-section">
            <input type="button" class="green-button" onclick="ajaxCallDemoViaGetJSON(this)" value="Load Result >"
                   data-ajax-url="${createLink(controller: 'util', action: 'demoGetJson')}">

            <div id="my-listing"></div>
        </div>

        <div class="bottom-inner-section">
            <input type="button" onclick="getScriptDemo()" value="Load Script >" class="green-button"><br/><br/>
            <button id="go">&raquo; Run</button><br/>

            <div class="block"></div>
        </div>
    </div>

    <div class="inner-section">
        <b>Projects:</b>
        <input type="button" onclick="loadDataIntoSection(this)" value="Load >" class="green-button"
               data-ajax-url="${createLink(controller: 'util', action: 'demoLoadHtml')}"><br/><br/>
        <ol id="new-projects"></ol>
    </div>
</div>
</body>
</html>