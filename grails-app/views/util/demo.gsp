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

    .main-section .inner-section input[type=text] {
        width: 200px;
    }

    .main-section .inner-section input[type=button] {
        width: 90px;
        background: green;
        border: 1px solid green;
        margin-top: 18px;
        color: #ffffff;
        float: right;
        margin-right: 100px;
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
        <label>Test Your Ajax Call ?</label>
        <input name="someText" type="text"><br/>
        <input type="button" onclick="ajaxCallDemo(this)" value="SUBMIT"
               data-ajax-url="${createLink(controller: 'util', action: 'demoMyAjax')}">
    </div>
</div>
</body>
</html>