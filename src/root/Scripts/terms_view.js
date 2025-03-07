$(document).ready(function () {
   
    //$("#termsBody > tr").on("click", function () {
    //var termId = $('#termsBody > tr').find('td:first').text();
    $('#termsBody > tr').on("click", function () {
        var termId = $(this).find('td:first').text();
        window.location.href = "/sections/trm_" + termId;
    });
});
