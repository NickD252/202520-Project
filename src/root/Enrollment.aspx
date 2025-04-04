<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Enrollment.aspx.cs" Inherits="coding_lms._Default" %>

<asp:Repeater ID="enrollmentRepeater" runat="server">
    <!--Create header template-->
    <HeaderTemplate>
        <!--Create table-->
        <table id="enrollmentViewTable" class="table table-hover table-bordered table-striped table-light">
            <!--Create table head-->
            <thead style="border: 1px solid black">
                <!--Create table rows-->
                <tr>
                    <!--Create table headers for the rows-->
                    <th width="10%">Term</th>
                    <th width="10%">Course</th>
                    <th width="10%">CRN</th>
                    <th width="10%">Students</th>
                </tr>
            </thead>
    </HeaderTemplate>
    <!--Create Item Template-->
    <ItemTemplate>
        <tr class="table-group-divider">
            <td><%# Eval("Term") %></td>
            <td><%# Eval("Course") %></td>
            <td><%# Eval("CRN") %></td>
            <td><button type="button" class="btn" ondblclick="toStudentList()">Students</button></td>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
<!--End Repeater-->

<!--JS and CSS references-->
<script defer src="Content/enrollment.css"></script>
<script defer src="Scripts/EnrollmentView.js"></script>

<!--Create script for Students button function-->
<script>
    function toStudentList() {
        window.location.href = "students.aspx";
    }
</script>