<%@ Page Title="quizzes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QuizManagement.aspx.cs" Inherits="coding_lms.QuizManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="d-flex mb-3">
        <div class="me-auto p-2">
            <h1>Quizzes</h1>
        </div>
        <div class="p-2">
            <button type="button" class="btn btn-success btn-lg">New</button>
        </div>
    </div>
    <table id="quizManagementTable" class="table table-hover">
        <tr>
            <th>&nbsp;Name</th>
            <th>Short&nbsp;</th>
            <th>&nbsp;Random</th>
            <th>&nbsp;PPQ</th>
            <th>&nbsp;Actions</th>
        </tr>
        <tbody class="table-hover">
            <tr>
                <td>lorem</td>
                <td>lorem</td>
                <td>lorem</td>
                <td>lorem</td>
                <td>lorem</td>
            </tr>
            <tr>
                <td>lorem</td>
                <td>lorem</td>
                <td>lorem</td>
                <td>lorem</td>
                <td>lorem</td>
            </tr>
        </tbody>
    </table>
    <script defer src="Content/bootstrap.css"></script>
</asp:Content>
