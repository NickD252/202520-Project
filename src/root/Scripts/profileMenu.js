/* eslint-disable no-unused-vars */
const sidebar = document.getElementById("profileMenuNav");
const submenu = document.getElementById("profileSubMenu");
const bdstyle = document.body.style;

document.getElementById("menuBtn").addEventListener("click", function ()
{
    if (sidebar.style.width == "20rem")
    {
        sidebar.style.width = "0";
        bdstyle.marginRight = "0";
        bdstyle.transition = "0.7s";
        bdstyle.backgroundColor = "white";
        submenu.style.width = "0";
    } else
    {
        sidebar.style.width = "20rem";
        bdstyle.transition = "0.7s";
        bdstyle.marginRight = "20rem";
    }
})


function closeNav() {
    sidebar.style.width = "0";
    bdstyle.marginRight = "0";
    bdstyle.backgroundColor = "white";
    bdstyle.transition = "0.7s";
    submenu.style.width = "0";
}

function displayTerms() {
    if (submenu.style.width == "20rem") {
        submenu.style.width = "0";
    } else {
        submenu.style.width = "20rem";
        submenu.style.marginRight = "20rem";
    }
}

function closeAllMenus() {
    sidebar.style.width = "0";
    submenu.style.width = "0";
    bdstyle.marginRight = "0";
    bdstyle.transition = "0.7s";
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
