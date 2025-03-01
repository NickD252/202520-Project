$(document).ready(function () {
    $('#quizTableBody > tr').on('dblclick', function () {
        $('#editQuiz').modal('show');
    });
});

//Clear modal inputs on close
$('#newQuiz, #editQuiz').on('hidden.bs.modal', function (e) {
    $(this)
        .find("input,textarea,select")
        .val('')
        .end()
        .find("input[type=checkbox], input[type=radio]")
        .prop("checked", "")
        .end();
})