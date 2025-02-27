const sidebar = document.getElementById("profileMenuNav");
const submenu = document.getElementById("profileSubMenu");
const bdstyle = document.body.style;

function openNav() {
    if (sidebar.style.width == "20rem") {
        sidebar.style.width = "0";
        bdstyle.marginRight = "0";
        bdstyle.transition = "0.3s";
        bdstyle.backgroundColor = "white";
        submenu.style.width = "0";
    } else {
        sidebar.style.width = "20rem";
        bdstyle.transition = "0.3s";
        bdstyle.marginRight = "20rem";
        bdstyle.backgroundColor = "rgba(0,0,0,0.4)";
    }
}

function closeNav() {
    sidebar.style.width = "0";
    bdstyle.marginRight = "0";
    bdstyle.backgroundColor = "white";
    bdstyle.transition = "0.3s";
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
    bdstyle.transition = "0.3s";
    bdstyle.backgroundColor = "white";
}