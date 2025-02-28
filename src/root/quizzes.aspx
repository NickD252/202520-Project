<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="quizzes.aspx.cs" Inherits="coding_lms.quizzes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="d-flex mb-3">
        <div class="me-auto p-2">
            <h1>Quizzes</h1>
        </div>
        <div class="p-2">
            <button type="button" class="btn btn-success btn-lg" data-bs-toggle="modal" data-bs-target="#newQuiz">New</button>
        </div>
    </div>
    <div class="modal fade" id="newQuiz" tabindex="-1" aria-labelledby="newQuizLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="newQuizLabel">New Quiz</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="d-flex flex-column">
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="quizNameInput">Name:</span>
                            <input type="text" class="form-control" placeholder="Quiz Name" aria-label="quizName" aria-describedby="quizNameInput">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="shortNameInput">Short Name:</span>
                            <input type="text" class="form-control" placeholder="Short Name" aria-label="shortName" aria-describedby="shortNameInput">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="pointsInput">Points per Question:</span>
                            <input type="text" class="form-control" placeholder="#" aria-label="pointsPerQuestion" aria-describedby="pointsInput">
                        </div>
                        <div class="mb-3">
                            <label>Randomize</label>
                            <input class="form-check-input" type="checkbox" value="">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button id="createNewQuizBtn" type="button" class="btn btn-success">Create</button>
                </div>
            </div>
        </div>
    </div>
    <table id="quizManagementTable" class="table table-hover table-bordered">
        <thead class="table-light">
            <tr>
                <th>&nbsp;Name</th>
                <th>&nbsp;Short</th>
                <th>&nbsp;Random</th>
                <th>&nbsp;PPQ</th>
                <th>&nbsp;Actions</th>
            </tr>
        </thead>
        <tbody class="table-hover table-group-divider">
            <tr>
                <td>lorem</td>
                <td>lorem</td>
                <td><input class="form-check-input" type="checkbox" value=""></td>
                <td>lorem</td>
                <td><button type="button" class="btn btn-primary">Questions</button></td>
            </tr>
            <tr>
                <td>lorem</td>
                <td>lorem</td>
                <td><input class="form-check-input" type="checkbox" value=""></td>
                <td>lorem</td>
                <td><button type="button" class="btn btn-primary">Questions</button></td>
            </tr>
        </tbody>
    </table>
    <script defer src="Content/bootstrap.css"></script>
</asp:Content>
