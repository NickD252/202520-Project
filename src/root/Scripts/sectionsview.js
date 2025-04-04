$(document).ready(function () {
    $("#sectionViewTable tr:gt(0)").on('dblclick', function () {
        var sectionId = $(this).find("td:nth-child(3)").text();
        window.location.href = "enrollment/sct_" + sectionId;
       
    });
});

