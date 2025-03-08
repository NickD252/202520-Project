$(document).ready(function () {
    // Added link to section page and on click functionality
    $('#termsBody > tr').on("click", function () {
        var termId = $(this).find('td:first').text();
        window.location.href = "/sections/trm_" + termId;
    });
});
