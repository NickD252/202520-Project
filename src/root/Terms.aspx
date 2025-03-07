<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="terms.aspx.cs" Inherits="coding_lms.Terms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>

<html lang="en">

<head>
  <title>Terms</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <script defer src="Scripts/terms_view.js"></script>
    <link href="src\root\content\bootstrap.min.css" rel="stylesheet" />
<!--
  <style>
      
    table {
        text-align: center;
        background-color: darkgray;
        border-collapse: collapse;  
        width: 80%;

       
    }
   
    th, td {

     
        padding: 1px;
        height: 120px;
        width: 70px; 
        padding: 1px;
        margin: 0;
        border: none;
        background-color: darkgray;
      
    }
    th {
        text-align: center;
        background-color: darkslategray;
        height: 50px;

    }
   
    td {
       
    }
</style>
       -->
    </head> 
    
        <div class="d-flex flex-row justify-content-center">
        <h1 class="text-center">Terms</h1>
        </div>
    
<body class=bg-light>
    <div class="d-flex flex-row justify-content-end table-light">
    <table class="table table-hover table-bordered table-striped">
        <thead class="table-light text-center">
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
    </div>
</body>
</html>
</asp:Content>
