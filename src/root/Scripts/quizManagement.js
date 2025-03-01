//Add doubleclick functionality to row to call modal
$(document).ready(function () {
    $('#quizTableBody > tr').on('dblclick', function () {
        $('#editQuiz').modal('show');
    });
});


//Direct 'Create quiz' modal to new quiz
document.getElementById("createNewQuizBtn").addEventListener("click", visitNewQuiz);

function visitNewQuiz() {
    var quizId = document.getElementById("shortNameInput").value;
    var quizName = document.getElementById("quizNameInput").value;
    if (quizId == '' || quizName == '') {
        if (quizId == '') {
            document.getElementById("invalidIdDiv").classList.remove('visually-hidden');
            document.getElementById("invalidId").innerHTML = 'You must enter a value in the Short Name field.';
        } if (quizName == '') {
            document.getElementById("invalidNameDiv").classList.remove('visually-hidden');
            document.getElementById("invalidName").innerHTML = 'You must enter a value in the Name field.';
        }
    } else {
        window.location.href = '/questions/qz-' + quizId;
    }
};

//Clear modal inputs on close
$(document).ready(function () {
    $('#newQuiz, #editQuiz').on('hidden.bs.modal', function (e) {
        $(this)
            .find("input,textarea,select,label")
            .val('')
            .text('')
            .end()
            .find("input[type=checkbox], input[type=radio]")
            .prop("checked", "")
            .end();
    });
});