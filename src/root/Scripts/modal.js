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

    // Send data to the server
    console.log("Saving Question...");
    console.log("Title: " + title);
    console.log("Body: " + body);
    console.log("Type: " + type);
    console.log("Options: " + options);

    // Close the modal after saving
    closeModal();

    
}
