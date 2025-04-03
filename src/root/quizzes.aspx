<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="quizzes.aspx.cs" Inherits="coding_lms.quizzes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <!--header and 'new' button-->
    <div class="d-flex align-items-center justify-content-between mb-3">
        <h1 class="mb-0">Quizzes</h1>
        <button type="button" class="btn btn-success btn-lg" data-bs-toggle="modal" data-bs-target="#newQuiz">
            New
        </button>
    </div>
    <!--######################-->


    <!--Create New Quiz modal-->
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
                            <input id="quizNameInput" type="text" pattern="[a-zA-Z0-9\s]" title="Quiz Name" class="form-control" style="max-width: 400px" maxlength="255" placeholder="Quiz Name" aria-label="quizName" aria-describedby="quizNameInput" required>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" style="width: 170px">Short Name:</span>
                            <input id="shortNameInput" type="text" class="form-control flex-grow-1" style="max-width: 400px" maxlength="25" placeholder="Short Name" aria-label="shortName" aria-describedby="shortNameInput" readonly>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" style="width: 170px">Points per Question:</span>
                            <input id="pointsInput" type="number" style="max-width: 400px"  class="form-control" placeholder="#" aria-label="pointsPerQuestion" aria-describedby="pointsInput">
                        </div>
                        <div class="input-group mb-3 d-flex flex-row justify-content-center">
                            <div class="input-group-text">
                                <input id="newQuizRandomCheck" class="form-check-input mt-0" type="checkbox" value="" aria-label="Checkbox for following text input">
                            </div>
                            <span class="input-group-text" style="max-width:400px">Randomize</span>
                        </div>
                    </div>
                </div>
                <div class="modal-footer d-flex justify-content-between">
                    <button type="button" class="btn btn-secondary" style="width: 5rem" data-bs-dismiss="modal">Cancel</button>
                    <button id="createNewQuizBtn" type="button" class="btn btn-success" style="width: 5rem">Create</button>
                </div>
            </div>
        </div>
    </div>
    <!--#####################-->

    <!--Edit quiz modal-->
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
                            <input id="editPointsInput" type="number" class="form-control" placeholder="#" style="max-width: 400px" aria-label="pointsPerQuestion" aria-describedby="pointsInput">
                        </div>
                        <div class="input-group mb-3 d-flex flex-row justify-content-center">
                            <div class="input-group-text">
                                <input id="editQuizRandomCheck" class="form-check-input mt-0" type="checkbox" aria-label="Checkbox for following text input">
                            </div>
                            <span class="input-group-text" style="max-width: 400px">Randomize</span>
                        </div>
                    </div>
                </div>
                <div class="modal-footer d-flex justify-content-between">
                    <button type="button" class="btn btn-secondary" style="width: 5rem" data-bs-dismiss="modal">Cancel</button>
                    <button id="updateQuizBtn" type="button" class="btn btn-success" style="width: 5rem">Update</button>
                </div>
            </div>
        </div>
    </div>
    <!--#####################-->

    <!--Work in progress on data retrieval repeater-->
    <asp:Repeater ID="quizRepeater" runat="server">
        <HeaderTemplate>
            <table id="quizManagementTable" class="table table-hover table-bordered table-striped table-light">
                <thead style="border-bottom: 1px solid black">
                    <tr>
                        <th width="30%">Name</th>
                        <th width="10%">Short</th>
                        <th width="10%">Random</th>
                        <th width="10%">PPQ</th>
                        <th width="10%">Actions</th>
                    </tr>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
                <tr class="table-group-divider">
                    <td><%# Eval("Name") %></td>
                    <td><%# Eval("Short") %></td>
                    <td><input class="form-check-input" type="checkbox" checked="<%# Eval("IsRandom").ToString() %>"></td>
                    <td><%# Eval("PPQ") %></td>
                    <td><button type="button" class="btn btn-primary" onclick="goToQuestions()">Questions</button></td>
                </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
   
        </FooterTemplate>
    </asp:Repeater>
    <!--End repeater-->

    <!--CSS and JS script references-->
    <script defer src="Content/bootstrap.css"></script>
    <script defer src="Scripts/quizManagement.js"></script>
    <script>
        function goToQuestions() {
            window.location.href = 'questions.aspx';
        }
    </script>
    <!--##################-->

</asp:Content>
