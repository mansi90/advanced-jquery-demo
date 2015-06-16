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

