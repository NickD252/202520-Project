<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Terms.aspx.cs" Inherits="coding_lms.Terms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
<html lang="en">
<head>
  <title>Terms</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="src\root\content\bootstrap.min.css" rel="stylesheet" />
  <style>
    table {
        text-align: center;
        background-color: darkgray;
        border-collapse: collapse;  
        height: -50%;
     
        margin-right: -9%;
        margin-top: 15%;
   
    }
    th, td {

        color: cornsilk;
        padding: 1px;
    }
    th {
        background-color: indigo;
    }
    button {
        padding: 1px;
        margin: 0;
    }
</style>
</head>
<body>
    <div class="d-flex flex-row justify-content-end">
    <table>
        <tr>
            <th>ID</th>
            <th>School Year</th>
            <th>Term</th>
        </tr>
        <tr>
            <td><button>Press</button></td>
            <td><button>Press</button></td>
            <td><button>Press</button></td>
        </tr>
        <tr>
            <td><button>Press</button></td>
            <td><button>Press</button></td>
            <td><button>Press</button></td>
        </tr>
        <tr>
            <td><button>Press</button></td>
            <td><button>Press</button></td>
            <td><button>Press</button></td>
        </tr>
    </table>
    </div>
</body>

</asp:Content>
