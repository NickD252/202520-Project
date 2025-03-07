// Open the modal
function openModal() {
    document.getElementById("questionModal").style.display = "block";
}

// Close the modal
function closeModal() {
    document.getElementById("questionModal").style.display = "none";
}

// Function to save question when the "Save Question" button is clicked
function saveQuestion() {
    var title = document.getElementById("title").value;
    var body = document.getElementById("body").value;
    var type = document.getElementById("type").value;
    var options = document.getElementById("options").value;

    // Perform any necessary validation here

    // Send data to the server using AJAX, or you could post the form directly
    console.log("Saving Question...");
    console.log("Title: " + title);
    console.log("Body: " + body);
    console.log("Type: " + type);
    console.log("Options: " + options);

    // Close the modal after saving
    closeModal();

    // Optionally, you can add an AJAX request to submit this data to the server
}
