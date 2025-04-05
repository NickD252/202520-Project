<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sitemap.aspx.cs" Inherits="coding_lms.Sitemap" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3><strong>Sitemap</strong></h3>
    <div id="sitelinks">
        <ul style="list-style-type: none">
            <li><a href="Default.aspx">Home</a></li>
            <li><a href="About.aspx">About</a></li>
            <li><a href="Contact.aspx">Contact</a></li>
            <li><a href="Privacy.aspx">Privacy</a></li>
            <li><a href="Login.aspx">Login</a></li>
            <li><a href="Register.aspx">Register</a></li>
        </ul>
    </div>
</asp:Content>
