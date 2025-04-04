//allows double click on table rows
$(document).ready(function () {
    $("#stdntTblBdy > tr").on("dblclick", function () {
        $("#editStdnt").modal("show");
    });
});