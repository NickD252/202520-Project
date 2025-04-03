<%@ Page Title="terms" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="terms.aspx.cs" Inherits="coding_lms.Terms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  
    <div class="d-flex flex-row justify-content-center">
        <h1 class="text-center">Terms</h1>
    </div>
   
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
