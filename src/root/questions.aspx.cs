using System;
using System.Web.UI;

namespace coding_lms
{
    public partial class Questions : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Code to load existing questions or handle any other page-specific logic.
        }

        // Event handler for saving the question after modal interaction
        protected void SaveQuestion(object sender, EventArgs e)
        {
            string title = Request.Form["title"];  // Get title from the form
            string body = Request.Form["body"];    // Get body from the form
            string type = Request.Form["type"];    // Get type from dropdown
            string options = Request.Form["options"]; // Get options from dropdown

            // Here you can add code to save the question to the database
            // For example, using a database connection and SQL queries

            // Simple example of saving question (you would implement your actual logic here)
            Console.WriteLine("Question Saved: " + title);
            Console.WriteLine("Body: " + body);
            Console.WriteLine("Type: " + type);
            Console.WriteLine("Options: " + options);

            // Optionally, refresh the page or update the UI with the saved question data
        }
    }
}
