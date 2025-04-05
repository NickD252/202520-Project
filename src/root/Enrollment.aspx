<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Enrollment.aspx.cs" Inherits="coding_lms.Enrollment" %>

<asp:Content ID="Content" ContentPlaceholderId="MainContent"  runat="server">
    <asp:Repeater ID="enrollmentRepeater" runat="server">
   
        <HeaderTemplate>
            <!--Create div-->
            <div class="d-flex justifiy-content-center">
                <!--Create table-->
                <table id="enrollmentViewTable" class="table table-hover table-bordered table-striped table-light">

                    <!--Create table head-->
                    <thead style="border: 1px solid black">
                        <!--Create table rows-->
                        <tr>
                            <!--Create table headers for the rows-->
                            <th width="10%">&nbsp;Term</th>
                            <th width="10%">&nbsp;Course</th>
                            <th width="10%">&nbsp;CRN</th>
                            <th width="10%">&nbsp;Students</th>
                        </tr>
                    </thead>
        </HeaderTemplate>

        <ItemTemplate>
            <tr class="table-group-divider">
                <td><%# Eval("Term") %></td>
                <td><%# Eval("Course") %></td>
                <td><%# Eval("CRN") %></td>
                <td><%# Eval("Students") %></td>
            </tr>
        </ItemTemplate>

        <FooterTemplate>
            </div>
      </table>
        </FooterTemplate>

    </asp:Repeater>
<!--End Repeater-->

<!--JS and CSS references-->
<script defer src="Content/enrollment.css"></script>
<script defer src="Scripts/EnrollmentView.js"></script>


</asp:Content>
