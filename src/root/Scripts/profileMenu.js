/* eslint-disable no-unused-vars */
const sidebar = document.getElementById("profileMenuNav");
const submenu = document.getElementById("profileSubMenu");
const bdstyle = document.body.style;

document.getElementById("menuBtn").addEventListener("click", function ()
{
    if (sidebar.style.width == "13rem")
    {
        sidebar.style.width = "0";
        bdstyle.marginRight = "0";
        bdstyle.transition = "0.3s";
        bdstyle.backgroundColor = "white";
        submenu.style.width = "0";
    } else
    {
        sidebar.style.width = "13rem";
        bdstyle.transition = "0.3s";
        bdstyle.marginRight = "0";
    }
})


function closeNav() {
    sidebar.style.width = "0";
    bdstyle.marginRight = "0";
    bdstyle.backgroundColor = "white";
    bdstyle.transition = "0.3s";
    submenu.style.width = "0";
    submenu.style.transitionDuration = "0ms";
}

function displayTerms() {
    if (submenu.style.width == "13rem") {
        submenu.style.width = "0";
        submenu.style.transitionDuration = "0ms";
    } else {
        submenu.style.width = "13rem";
        submenu.style.marginRight = "13rem";
        submenu.style.transitionDuration = "0ms";
    }
}

function closeAllMenus() {
    sidebar.style.width = "0";
    submenu.style.width = "0";
    bdstyle.marginRight = "0";
    bdstyle.transition = "0.3s";
    bdstyle.backgroundColor = "white";
}

//Redirection from menu links
$(document).ready(function () {
    $("#menuQuizzes").on("click", function () {
        window.location.href = "/quizzes";
    });
});

$(document).ready(function () {
    $("#menuCalendar").on("click", function () {
        window.location.href = "/calendar";
    });
});

//Storage of selected Term from link
$(document).ready(function () {
    $("#profileSubMenu > a").on("click", function () {
        var sessionMenuTerm = $(this).text();
        sessionStorage.setItem("selectedTerm", sessionMenuTerm);
    });
});
