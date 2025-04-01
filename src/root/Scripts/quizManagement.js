//Add doubleclick functionality to row to call modal
//##################################################
//Populate modal with row data
$(document).ready(function () {
    $("#quizManagementTable tr:gt(0)").on("dblclick", function () {
        $("#editQuiz").modal("show");
        $("#editQuizNameInput").val($(this).find("td:eq(0)").text());
        $("#editShortNameInput").val($(this).find("td:eq(1)").text());
    });
});

//Direct 'Create quiz' modal to new quiz
//######################################
$(document).ready(function ()
{
    $("#createNewQuizBtn").on("click", function ()
    {
        var quizId = $("#shortNameInput").val();
        {
            window.location.href = "/questions/qz-" + quizId;
        }
    });
});

//Clear modal inputs on close
//###########################
$(document).ready(function () {
    $("#newQuiz, #editQuiz").on("hidden.bs.modal", function () {
        $(this)
            .find("input,textarea,select,label")
            .val("")
            .text("")
            .end()
            .find("input[type=checkbox], input[type=radio]")
            .prop("checked", "")
            .end();
    });
});
