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
        width: 60%;
    }
   
    th, td {

        color: cornsilk;
        padding: 1px;
        height: 60%;
        width: 80px;
    }
    th {
        text-align: center;
        background-color: indigo;
        height: 10px;

    }
   
    button {
        padding: 1px;
        margin: 0;
    }
</style>
</head> 
<header class="d-flex flex-row justify-content-end" style="padding-right: 200px;">
    <h1 class="text-center">Terms</h1>
</header>
<body>
 
    <div class="d-flex flex-row justify-content-end">
   
    <table>
        <tr class="">
            <th><h4>ID</h4></th>
            <th><h4>School Year</h4></th>
            <th><h4>Term</h4></th>
        </tr>
        <tr class="h-300">
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
