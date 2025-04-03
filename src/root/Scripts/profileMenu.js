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
        sidebar.style.width = "10rem";
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
    if (submenu.style.width == "10rem") {
        submenu.style.width = "0";
        submenu.style.transitionDuration = "0ms";
    } else {
        submenu.style.width = "10rem";
        submenu.style.marginLeft = "10rem";
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

$(document).ready(function ()
{
    $("#menuTerms").hover(
        function ()
        {
            $("#profileSubMenu").css("width", "10rem");
            $("#profileSubMenu").css("transition-duration", "0ms");
            $("#profileSubMenu").css("margin-left", "10rem");
        },
        function ()
        {
            $("#profileSubMenu").css("width", "0rem");
            $("#profileSubMenu").css("transition-duration", "0ms");
            $("#profileSubMenu").css("margin-left", "0rem");
        }
    );
    $("menuTerms").on("click", function ()
    {
        $("#profileSubMenu").css("width", "10rem");
        $("#profileSubMenu").css("transition-duration", "0ms");
        $("#profileSubMenu").css("margin-left", "10rem");
    });

    $("#profileSubMenu").hover(
        function ()
        {
            $("#profileSubMenu").css("width", "10rem");
            $("#profileSubMenu").css("transition-duration", "0ms");
            $("#profileSubMenu").css("margin-left", "10rem");
        },
        function ()
        {
            $("#profileSubMenu").css("width", "0rem");
            $("#profileSubMenu").css("transition-duration", "0ms");
            $("#profileSubMenu").css("margin-left", "0rem");
        }
    );
})

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
