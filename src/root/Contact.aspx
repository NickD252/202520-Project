<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="root.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <address>
            4600 Valleydale Rd,<br />
            Birmingham, AL, 35242<br />
            <abbr title="Phone">P:</abbr>
            205-983-5911
        </address>

        <address>
            <strong>Support:</strong>   <a href="mailto:Support@example.com">jwood36@jeffersonstate.edu</a>
        </address>
    </main>
</asp:Content>
