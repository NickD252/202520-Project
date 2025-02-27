function openNav() {
    if (document.getElementById("mySidenav").style.width == "20rem") {
        document.getElementById("mySidenav").style.width = "0";
        document.body.style.marginRight = "0";
        document.body.style.backgroundColor = "white";
        document.getElementById("subMenu").style.width = "0";
    } else {
        document.getElementById("mySidenav").style.width = "20rem";
        document.body.style.marginRight = "20rem";
        document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
    }
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.body.style.marginRight = "0";
    document.body.style.backgroundColor = "white";
    document.getElementById("subMenu").style.width = "0";
}

function displayTerms() {
    if (document.getElementById("subMenu").style.width == "15rem") {
        document.getElementById("subMenu").style.width = "0";
    } else {
        document.getElementById("subMenu").style.width = "15rem";
        document.getElementById("subMenu").style.marginRight = "20rem";
    }
}

function closeAllMenus() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("subMenu").style.width = "0";
    document.body.style.marginRight = "0";
    document.body.style.backgroundColor = "white";
}