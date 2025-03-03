<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="root.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">

        <style>

            table, th, td{

                border: 1px solid black;
                text-align: center;

            }

            table{

                width: 25%;
                margin-left: auto;
                margin-right: auto;

            }

            h1{

                text-align: center;

            }

        </style>

        <h1>Student</h1>

        <table>

            <tr>

                <th>Last</th>
                <th>First</th>
                <th>Email</th>

            </tr>

        </table>

    </main>
</asp:Content>
