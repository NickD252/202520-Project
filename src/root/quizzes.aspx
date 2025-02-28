<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="quizzes.aspx.cs" Inherits="coding_lms.quizzes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="d-flex mb-3">
        <div class="me-auto p-2">
            <h1>Quizzes</h1>
        </div>
        <div class="p-2">
            <button type="button" class="btn btn-success btn-lg">New</button>
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
