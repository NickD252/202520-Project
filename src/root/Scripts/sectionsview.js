$(document).ready(function () {
    $("#sectionViewTable tr:gt(0)").on('dblclick', function () {
        var sectionId = $(this).find("td:nth-child(3)").text();
        window.location.href = "Enrollment/sct_" + sectionId;
    });

    const urlString = window.location.href;
    const match = urlString.match(/_(\d+)/);

    if (match) {
        $("#sectionViewTable td:first-child").hide();
        $("#sectionViewTable th:first-child").hide();
    }

});

