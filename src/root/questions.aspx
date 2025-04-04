<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="questions.aspx.cs" Inherits="coding_lms.Questions" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Questions</title>
    <script type="text/javascript" src="scripts/modal.js"></script>
    <style>
        /* Basic styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        #menu {
            width: 200px;
            float: left;
            background-color: #f4f4f4;
            padding: 20px;
            height: 100%;
        }

        #menu ul {
            list-style-type: none;
            padding: 0;
        }

        #menu ul li {
            margin: 10px 0;
        }

        #menu ul li a {
            text-decoration: none;
            color: #333;
        }

        #questionsTable {
            margin-left: 220px;
            margin-top: -50px;
            width: 80%;
            border-collapse: collapse;
        }

        #questionsTable th, #questionsTable td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        #newQuestionBtn {
            background-color: green;
            color: white;
            padding: 0px 10px;
            border: none;
            width: 125px;
            height: 50px;
            cursor: pointer;
            border-radius: 10px;
            font-size: 30px;
            font-weight: bold;
            margin-left: 30px;
            margin-top: 10px;
        }

        #newQuestionBtn:hover {
            background-color: darkgreen;
        }

        /* Modal styling */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.4);
            padding-top: 60px;
        }

        .modal-content {
            background-color: white;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }

        .close {
            color: #aaa;
            font-size: 28px;
            font-weight: bold;
            float: right;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        /* Styling for the form inside the modal */
        form {
            margin-top: 20px;
        }

        form input, form textarea, form select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <div id="menu">
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">Questions</a></li>
            <li><a href="#">Settings</a></li>
        </ul>
    </div>

    <!-- Button to trigger modal -->
    <button id="newQuestionBtn" class="green-button" onclick="openModal()">New</button>

    <!-- Header text -->
    <p style="font-size: 50px; text-align: center;">Questions</p>

    <!-- Table for listing questions -->
    <table id="questionsTable">
        <thead>
            <tr>
                <th style="background-color:rgba(169,169,169,0.5)">Title</th>
                <th style="background-color:rgba(169,169,169,0.5)">Body</th>
                <th style="background-color:rgba(169,169,169,0.5)">Active</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Lorem Ipsum 1</td>
                <td ondblclick="editBody(this)">Lorem ipsum dolor sit amet, consectetur adipiscing elit...</td>
                <td><input type="checkbox" /></td>
            </tr>
            <tr>
                <td>Lorem Ipsum 2</td>
                <td ondblclick="editBody(this)">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...</td>
                <td><input type="checkbox" /></td>
            </tr>
            <tr>
                <td>Lorem Ipsum 3</td>
                <td ondblclick="editBody(this)">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi...</td>
                <td><input type="checkbox" /></td>
            </tr>
        </tbody>
    </table>

    <!-- Modal for adding/editing a question -->
    <div id="questionModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2>Add/Edit Question</h2>

            <form id="questionForm" runat="server">
                <label for="title">Title:</label>
                <input type="text" id="title" name="title" required /><br>

                <label for="body">Body:</label>
                <textarea id="body" name="body" required></textarea><br>

                <label for="type">Type:</label>
                <select id="type" name="type">
                    <option value="Key - Text">Key - Text</option>
                    <option value="TF - True/False">TF - True/False</option>
                    <option value="MA - Multiple Answer">MA - Multiple Answer</option>
                    <option value="MC - Multiple Choice">MC - Multiple Choice</option>
                </select><br>

                <label for="options">Options:</label>
                <select id="options" name="options">
                    <option value="Letter">Letter</option>
                    <option value="Number">Number</option>
                </select><br>

                <button type="button" id="saveQuestion" onclick="saveQuestion()">Save Question</button>
                <button type="button" onclick="closeModal()">Cancel</button>
            </form>
        </div>
    </div>
</body>
</html>
