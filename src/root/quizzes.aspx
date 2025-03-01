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
                    <div class="d-flex flex-column justify-content-center align-content-center">
                        <div class="input-group mb-3 d-flex flex-row">
                            <span class="input-group-text" style="width: 170px">Name:</span>
                            <input id="quizNameInput" type="text" class="form-control" style="max-width: 400px" maxlength="255" placeholder="Quiz Name" aria-label="quizName" aria-describedby="quizNameInput">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" style="width: 170px">Short Name:</span>
                            <input id="shortNameInput" type="text" class="form-control flex-grow-1" style="max-width: 400px" maxlength="25" placeholder="Short Name" aria-label="shortName" aria-describedby="shortNameInput" readonly>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" style="width: 170px">Points per Question:</span>
                            <input id="pointsInput" type="text" style="max-width: 400px"  class="form-control" placeholder="#" aria-label="pointsPerQuestion" aria-describedby="pointsInput">
                        </div>
                        <div class="input-group mb-3 d-flex flex-row justify-content-center">
                            <div class="input-group-text">
                                <input id="newQuizRandomCheck" class="form-check-input mt-0" type="checkbox" value="" aria-label="Checkbox for following text input">
                            </div>
                            <span class="input-group-text" style="max-width:400px">Randomize</span>
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
    <div class="modal fade" id="editQuiz" tabindex="-1" aria-labelledby="editQuizLabel" aria-hidden="false">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="editQuizLabel">Edit Quiz</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="d-flex flex-column justify-content-center align-content-center">
                        <div class="input-group mb-3">
                            <span class="input-group-text" style="width: 170px">Name:</span>
                            <input id="editQuizNameInput" type="text" class="form-control" placeholder="Quiz Name" maxlength="255" style="max-width: 400px" aria-label="quizName" aria-describedby="quizNameInput">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" style="width: 170px">Short Name:</span>
                            <input id="editShortNameInput" type="text" class="form-control" placeholder="Short Name" maxlength="25" style="max-width: 400px" aria-label="shortName" aria-describedby="shortNameInput" readonly>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" style="width: 170px">Points per Question:</span>
                            <input id="editPointsInput" type="text" class="form-control" placeholder="#" style="max-width: 400px" aria-label="pointsPerQuestion" aria-describedby="pointsInput">
                        </div>
                        <div class="input-group mb-3 d-flex flex-row justify-content-center">
                            <div class="input-group-text">
                                <input id="editQuizRandomCheck" class="form-check-input mt-0" type="checkbox" value="" aria-label="Checkbox for following text input">
                            </div>
                            <span class="input-group-text" style="max-width: 400px">Randomize</span>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button id="updateQuizBtn" type="button" class="btn btn-success">Update</button>
                </div>
            </div>
        </div>
    </div>
    <table id="quizManagementTable" class="table table-hover table-bordered table-striped">
        <thead class="table-light">
            <tr>
                <th width="30%">&nbsp;Name</th>
                <th width="10%">&nbsp;Short</th>
                <th width="10%">&nbsp;Random</th>
                <th width="10%">&nbsp;PPQ</th>
                <th width="10%">&nbsp;Actions</th>
            </tr>
        </thead>
        <tbody id="quizTableBody" class="table-hover table-group-divider">
            <!--placeholder row-->
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
    <script defer src="Scripts/quizManagement.js"></script>
</asp:Content>
