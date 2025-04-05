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
        var firstPart = email.split("@");
        var username = firstPart[0];
        var domain = firstPart[1]
        var usrnmeEdit = username[0] + "*".repeat(username.length - 2) + username[username.length - 1];
        var domainEdtPt = domain.split(".");
        var domainEdit = domainEdtPt[0] + ".***";
        var emailEdit = usrnmeEdit + "@" + domainEdit;

        $("#emailInput").val(emailEdit);
});

    $("#stdntTblBdy td:last-child").hide();
    $("#stdntTblBdy th:last-child").hide();

});