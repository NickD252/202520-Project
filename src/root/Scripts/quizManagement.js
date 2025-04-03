//Add doubleclick functionality to row to call modal
//##################################################
//Populate modal with row data
$(document).ready(function () {
    $("#quizManagementTable tr:gt(0)").on("dblclick", function () {
        $("#editQuiz").modal("show");
        $("#editQuizNameInput").val($(this).find("td:eq(0)").text());
        $("#editShortNameInput").val($(this).find("td:eq(1)").text());
        $("#editPointsInput").val($(this).find("td:eq(3)").text());
    });
});

//Consolidation of create new quiz features and actions
$(document).ready(function ()
{
    $("#quizNameInput").on("input", function ()
    {
        var quizName = $("#quizNameInput").val();
        var patternName = /^[a-zA-Z0-9\s#]+$/;
        var patternShortName = /^[a-z_A-Z0-9]+$/;

        if (patternName.test(quizName))
        {
            var strippedQuizId = quizName.replace(/\s+/g, "_").replace(/#/g, "").replace(/[^a-z_A-Z0-9]/g, "");

            if (patternShortName.test(strippedQuizId))
            {
                $("#shortNameInput").val(strippedQuizId);
            }
        }
    });

    $("#createNewQuizBtn").on("click", function ()
    {
        var quizId = $("#shortNameInput").val();
        var patternShortName = /^[a-z_A-Z0-9]+$/;

        if (patternShortName.test(quizId))
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
