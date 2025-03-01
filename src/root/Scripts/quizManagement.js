//Add doubleclick functionality to row to call modal
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
});

//Direct 'Create quiz' modal to new quiz
document.getElementById("createNewQuizBtn").addEventListener("click", visitNewQuiz);

function visitNewQuiz() {
    var quizId = document.getElementById("shortNameInput").value;
    window.location.href = '/questions/qz-' + quizId;
}