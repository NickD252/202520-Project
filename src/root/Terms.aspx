<%@ Page Title="terms" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="terms.aspx.cs" Inherits="coding_lms.Terms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="d-flex flex-row justify-content-center">
        <h1 class="text-center">Terms</h1>
    </div>

    <asp:Repeater ID="termsRepeater" runat="server">
        <HeaderTemplate>
            <!--size of table and location-->
            <div class="d-flex justify-content-center">
                <table id="termsBody" class="w-75 table table-hover table-bordered table-striped">
                    <thead>
                        <!--table cols-->
                        <tr>
                            <!--centerd--->
                            <th class="text-center">
                                <h4>ID</h4>
                            </th>
                            <th class="text-center">
                                <h4>School Year</h4>
                            </th>
                            <th class="text-center">
                                <h4>Term</h4>
                            </th>
                        </tr>
                    </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <!--table cells-->
            <tr>
                <td><%# Eval("ID") %></td>
                <td><%# Eval("SchoolYear") %></td>
                <td><%# Eval("Name") %></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
            </div>
        </FooterTemplate>
    </asp:Repeater>
    <script defer src="Scripts/terms_view.js"></script>
    <script defer src="Content/bootstrap.css"></script>
</asp:Content>
