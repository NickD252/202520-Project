//allows double click on table rows
$(document).ready(function () {
    $("#stdntTblBdy tr").on("dblclick", function () {
        $("#editStdnt").modal("show");
        $("#lastNameInput").val($(this).find("td:eq(0)").text());
        $("#firstNameInput").val($(this).find("td:eq(1)").text());
        let rcrdNum = $(this).find("td:eq(3)").text().trim();
        let hiddenPortion = rcrdNum.substring(0, 4) + "*".repeat(rcrdNum.length - 4);
        $("#recordNumInput").val(hiddenPortion);
        let email = $(this).find("td:eq(2)").text().trim();
        let delimeter = "@";
        let frstPrtion = email.split(delimeter)[0];
        let firstLetter = frstPrtion[0];
        let middlePart = frstPrtion.substring(firstLetter, lastLetter);
        let astrisk = middlePart.replace(/./g, '*');
        let lastLetter = frstPrtion.substring(frstPrtion.length - 1);
        let hideOne = middlePart + astrisk + lastLetter;
        $("#emailInput").val(frstPrtion);
});

    $("#stdntTblBdy td:last-child").hide();
    $("#stdntTblBdy th:last-child").hide();

});