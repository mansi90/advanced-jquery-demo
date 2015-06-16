<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
    <script type="text/javascript">
        jQuery(document).ready(function () {
            $("#g").bind('click', function () {
                var form = $("#test");
                /*The .serializeArray() method creates a JavaScript array of objects,
                 ready to be encoded as a JSON string. It operates on a jQuery collection
                 of forms and/or form controls.*/
                console.log(form.serializeArray());
                alert(form.serialize());
                return false;
            });
            var params = {name: 'test user', email: 'test@gmail.com', id: 24};
            console.log(jQuery.param(params));
        });

        var urls = {
            checkEmailURL: "${createLink(controller: 'author', action: 'checkEmailAvailability')}",
            checkEmailJSONURL: "${createLink(controller: 'author', action: 'checkEmailAvailabilityWithJSONResponse')}",
            getAuthorListURL: "${createLink(controller: 'author', action: 'getListOfAuthors')}"
        }
    </script>
</head>


<body>
<div style="padding: 20px">

    <form id="test">
        <div style="padding: 10px">
            <label>1.</label>
            <input type="text" name="a" value="1" id="a"/>
        </div>

        <div style="padding: 10px">
            <label>2.</label>
            <input type="text" name="b" value="2" id="b"/></div>

        <div>
            <input type="hidden" name="c" value="3" id="c"/>
        </div>

        <div style="padding: 10px">
            <label>3.</label>
            <textarea name="d" rows="2" cols="4" style="height: 20px">4</textarea>
        </div>

        <div style="padding: 10px">
            <label>4.</label>
            <select name="fruit">
                <option value="apple" selected="selected">Apple</option>
                <option value="mango">Mange</option>
                <option value="peach">Peach</option>
            </select>
        </div>

        <div style="padding: 10px">
            <label>5.</label>
            <input type="checkbox" name="f" value="8" id="f"/>
        </div>

        <div style="padding: 10px">
            <input type="submit" name="g" value="Submit" id="g"/>
        </div>
    </form>
</div>
</body>
</html>