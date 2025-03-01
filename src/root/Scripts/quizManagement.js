$(document).ready(function () {
    $('#quizTableBody > tr').on('dblclick', function () {
        $('#editQuiz').modal('show');
    });
});