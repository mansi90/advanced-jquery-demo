$(document).ready(function () {
});
function jqueryEachExample1() {
    $.each(["Amit", "Anita", "Divya", "Priya", "Vivek"], function (index, value) {
        console.log("Index is : " + index + ", Value is : " + value);
    });
}

function jqueryEachExample2() {
    var paragraphs = $('p'), count = 1;
    $.each(paragraphs, function () {
        $(this).html(($(this).html() + ' > ' + count));
        count++;
    })
}

function jsonExample() {
    var myJson = {name: 'Xyz', age: 19, grade: 'A'}, myArray = ['Abc', 22, 'Xyz'];
    console.log(myJson);
    console.log(myArray);
    return myJson;
}

function jqueryEachWithJson1() {
    var data = [
        {name: 'User 1', age: 19, grade: 'A+'},
        {name: 'User 2', age: 23, grade: 'B'},
        {name: 'User 3', age: 21, grade: 'B+'},
        {name: 'User 4', age: 25, grade: 'A'},
        {name: 'User 5', age: 20, grade: 'A+'}
    ];
    $.each(data, function (index, value) {
        console.log("Index : " + index + ", Name : " + value.name + ", Age : " + value.age + ", Grade : " + value.grade)
    });
}

function jqueryEachWithJson2() {
    var data = [
        {name: 'User 1', age: 19, grade: 'A+'},
        {name: 'User 2', age: 23, grade: 'B'},
        {name: 'User 3', age: 21, grade: 'B+'},
        {name: 'User 4', age: 25, grade: 'A'},
        {name: 'User 5', age: 20, grade: 'A+'}
    ];

    for (var index in data) {
        console.log("Index : " + index + ", Name : " + data[index].name + ", Age : " + data[index].age + ", Grade : " + data[index].grade)
    }
}

function ajaxCallDemo(element) {
    var input = $(element).closest('.inner-section').find('input[name=someText]');
    $.ajax({
        type: "GET",
        url: $(element).data('ajax-url'),
        data: {someText: input.val()}
    }).success(function () {
            alert('Got Success');
            input.val('');
        });
}

var ajaxCallDemoViaGetJSON = function (element) {
    $.get($(element).data('ajax-url'), function (data) {
        var items = [];
        $.each(data, function (key, val) {
            items.push("<li id='" + key + "'>" + val + "</li>");
        });

        var ul = "<ul>" + items.join("") + "</ul>";
        $('#my-listing').html(ul);
    });
};

var getScriptDemo = function () {
    var url = "https://code.jquery.com/color/jquery.color.js", goBtn = $("#go");
    $.getScript(url, function () {
        goBtn.css({'background-color': 'red', 'border': '1px solid red', 'color': 'white'});
        goBtn.click(function () {
            $(".block")
                .animate({
                    backgroundColor: "rgb(255, 180, 180)"
                }, 1000)
                .delay(500)
                .animate({
                    backgroundColor: "olive"
                }, 1000)
                .delay(500)
                .animate({
                    backgroundColor: "#00f"
                }, 1000);
        });
    });

    return 'Something!'
};

var loadDataIntoSection = function (element) {
    var url = $(element).data('ajax-url');
    $("#new-projects").load(url);
}

