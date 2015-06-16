<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title></title>
        <meta name="layout" content="main">
        <script type="text/javascript">
            jQuery(document).ready(function () {
                $("#g").bind('click', function () {
                    alert($("#test").serialize());
                });
                  var params = {name:'manoj', email:'manoj@intelligrape.com', id:24}
                 alert(jQuery.param(params));
                /* jQuery('#test').slideUp('slow', function () {
                 alert('The slide up action has been executed');

                 });*/
            });

            var urls = {
                checkEmailURL:"${createLink(controller: 'author', action: 'checkEmailAvailability')}",
                checkEmailJSONURL:"${createLink(controller: 'author', action: 'checkEmailAvailabilityWithJSONResponse')}",
                getAuthorListURL:"${createLink(controller: 'author', action: 'getListOfAuthors')}"
            }
        </script>
    </head>


    <body>
        <input type="text" name="nnn" value="22">

        <form id="test">
            <div><input type="text" name="a" value="1" id="a"/></div>

            <div><input type="text" name="b" value="2" id="b"/></div>

            <div><input type="hidden" name="c" value="3" id="c"/></div>

            <div>
                <textarea name="d" rows="8" cols="40">4</textarea>
            </div>

            <div><select name="e">
                <option value="5" selected="selected">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
            </select></div>

            <div>
                <input type="checkbox" name="f" value="8" id="f"/>
            </div>

            <div>
                <input type="submit" name="g" value="Submit" id="g"/>
            </div>
        </form>
    </body>
</html>


a=1&b=2&c=3&d=4&e=5



name=manoj&email=manoj%40intelligrape.com&id=24