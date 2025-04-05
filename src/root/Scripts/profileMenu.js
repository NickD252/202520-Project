/* eslint-disable no-unused-vars */
const sidebar = document.getElementById("profileMenuNav");
const submenu = document.getElementById("profileSubMenu");
const bdstyle = document.body.style;

$(document).ready(function ()
{
    $("#menuBtn").on("click", function ()
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

    $(".body-content, #close").on("click", function ()
    {
        sidebar.style.width = "0";
        submenu.style.width = "0";
        bdstyle.marginRight = "0";
        bdstyle.transition = "0.3s";
    })

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

    $("#menuQuizzes").on("click", function ()
    {
        window.location.href = "quizzes";
    });

    $("#menuCalendar").on("click", function ()
    {
        window.location.href = "calendar";
    });

    $("#profileSubMenu > a").on("click", function ()
    {
        var sessionMenuTerm = $(this).text();
        sessionStorage.setItem("selectedTerm", sessionMenuTerm);
    });
})