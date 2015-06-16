$(document).ready(function () {
});
function callback1() {
    var paragraphs = $('p'), count = 1;
    $.each(paragraphs, function () {
        $(this).html(($(this).html() + ' > ' + count));
        count++;
    })
}