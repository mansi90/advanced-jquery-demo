<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>DEMO Page</title>
    <style type="text/css">
    .main-section {
        padding: 20px;
    }

    .main-section .inner-section {
        width: 50%;
        float: left;
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
        background: green;
        border: 1px solid green;
        margin-top: 18px;
        color: #ffffff;
        float: right;
        margin-right: 100px;
    }

    .main-section .inner-section .bottom-inner-section {
        height: 250px;
    }

    .main-section .inner-section .bottom-inner-section #my-listing {
        padding: 40px;
    }

    .main-section .inner-section .bottom-inner-section input[type=button] {
        width: 140px;
        background: green;
        border: 1px solid green;
        margin-top: 18px;
        margin-left: 20px;
        color: #ffffff;
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
            <input type="button" onclick="ajaxCallDemo(this)" value="SUBMIT"
                   data-ajax-url="${createLink(controller: 'util', action: 'demoMyAjax')}">
        </div>

        <div class="bottom-inner-section">
            <input type="button" onclick="ajaxCallDemoViaGetJSON(this)" value="Load Result >"
                   data-ajax-url="${createLink(controller: 'util', action: 'demoGetJson')}">

            <div id="my-listing"></div>
        </div>
    </div>
</div>
</body>
</html>