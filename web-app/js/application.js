jQuery(document).ready(function () {
//    $("#datepicker").datepicker();
    $("#datepicker").datepicker({ dateFormat:"dd-mm-yy" });
    jQuery("#createForm").validate({
        rules:{
            name:{
                required:true,
                maxlength:8
            },
            email:{
                required:true,
                email:true,
                remote:urls.checkEmailURL
            },
            datepicker:{
                required:true
            }
        },
        messages:{
            name:{
                required:"Blah blah!!"
            },
            email:{
                remote:"This email is already in use!!"
            }
        }
    });

    $("#tabs").tabs();

//    $("#dialog:ui-dialog").dialog("destroy");
    $("#dialog-message").dialog({
        draggable:true,
        autoOpen:false,
        modal:true,
        show:'fadeIn',
        hide:'fadeOut',
        width:700,
        resizable:false,
        buttons:{
            "Create":function () {
                $(this).dialog("close");
            },
            Cancel:function () {
                $(this).dialog("close");
            }
        }
    });

    $('.dialogButton').bind('click', function () {
        $("#dialog-message").dialog('open');
    });

    $('#checkEmail').bind("click", function () {
//        emailCheckViaAJAX();
//        emailCheckViaGET();
        emailCheckViaGetJSON();
    });
});

var emailCheckViaGET = function () {
    $.get(urls.checkEmailURL, {email:$("#email").val()}, function (data) {
        alert("Email check via $.get returned " + data)
    });
};

var emailCheckViaGetJSON = function () {
    $.getJSON(urls.checkEmailJSONURL, {email:$("#email").val()}, function (data) {
        alert("Handle the GET callback here ..., Got data : " + data + ", Success : " + data.status)
    });
};

var emailCheckViaAJAX = function () {
    $.ajax({
        type:"GET",
        url:urls.checkEmailURL,
        dataType:"html",
        data:{email:$("#email").val()}
    }).always(function () {
                alert("Ajax process complete");
            })
            .fail(function () {
                alert("Ajax call resulted in a failure");
            })
            .done(function (data) {
                alert("Ajax call resulted in a success");
                alert("Data returned : " + data);
            });
};

var jQueryEachAJAXExample = function () {
    $.getJSON(urls.getAuthorListURL, function (data) {
        console.log(JSON.stringify(data));
        jQuery.each(data, function (index, value) {
            alert("Index : " + index + ", Name : " + value.name + ", Email : " + value.email + ", DOB: " + value.dateOfBirth)
        })
    });
};

var jQueryEachExample = function () {
    jQuery.each(["Karthikey", "Heena", "Shaktimaan", "Manavendra", "Komal"], function (index, value) {
        alert("Index is : " + index + ", Value is : " + value);
    });
};
