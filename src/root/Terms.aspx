<%@ Page Title="terms" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="terms.aspx.cs" Inherits="coding_lms.Terms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--center the terms header--->



    <div class="d-flex flex-row justify-content-center">
        <h1 class="text-center">Terms</h1>
    </div>
    <!-- < class="d-flex flex-row justify-content-end table-light">
            <table class="table table-hover table-bordered table-striped">
        <thead class="table-light text-center">
            <!--table head
        <tr>
            <th><h4>ID</h4></th>
            <th><h4>School Year</h4></th>
            <th><h4>Term</h4></th>
        </tr>

        </thead>

        <tbody id="termsBody" class="text-center table-group-divider">
            
        <tr class="h-300">
            <td>1</td>
            <td>2</td>
            <td>3</td>
        </tr>
            
        <tr>
            <td>4</td>
            <td>5</td>
            <td>6</td>
        </tr>
            
        <tr>
            <td>7</td>
            <td>8</td>
            <td>9</td>
        </tr>
            
        <tr>
            <td>10</td>
            <td>11</td>
            <td>12</td>
        </tr>
        </tbody>
    </table>

    --->
    <asp:Repeater ID="termsRepeater" runat="server">
        <HeaderTemplate>
            <table id="termsBody" class="table table-hover table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>
                                <h4>ID</h4>
                            </th>
                            <th>
                                <h4>School Year</h4>
                            </th>
                            <th>
                                <h4>Term</h4>
                            </th>
                        </tr>
                    </thead>
               
            
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Eval("ID") %></td>
                <td><%# Eval("SchoolYear") %></td>
                <td><%# Eval("Name") %></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
        </table>
        </FooterTemplate> 

    </asp:Repeater>
    <script defer src="Scripts/terms_view.js"></script>
    <script defer src="Content/bootstrap.css"></script>
</asp:Content>
