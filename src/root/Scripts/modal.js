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
    // Use jQuery to get values from the form
    var title = $("#title").val();
    var body = $("#body").val();
    var type = $("#type").val();
    var options = $("#options").val();

    // Close the modal after saving
    closeModal();
}

//hopefully this commit closes it