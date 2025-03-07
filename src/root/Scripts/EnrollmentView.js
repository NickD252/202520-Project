//Create function to apply double-click, have jquery search for a table id, and capture text that is found in the third td cell
$(document).ready(function () {
    $("#enrollmentTable > tr").on('dblclick', function () {
        var sectionId = $(this).find("td:nth-child(3)").text();
        window.location.href = "students/sct_" + sectionId;
    })
})