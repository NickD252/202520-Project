// Open the modal
function openModal() {
    $("#questionModal").fadeIn();
}

// Close the modal
function closeModal() {
    $("#questionModal").fadeOut();
}

// Function to save question when the "Save Question" button is clicked
function saveQuestion() {
    var title = $("#title").val();
    var body = $("#body").val();
    var type = $("#type").val();
    var options = $("#options").val();

    // TODO: You can handle form data submission here via AJAX if needed

    // Close the modal after saving
    closeModal();
}
