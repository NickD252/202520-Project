<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Enrollment.aspx.cs" Inherits="coding_lms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<head>
    <!--Specify which charset to use-->
    <meta charset="UTF-8" /> <!--Initialize UTF-8 as meta charset for web form so that all characters will render properly-->
    <!--Use viewport to scale and size the page-->
    <meta name="viewport" content="width=device-width, initial scale=1.0" /> <!--Initialize viewport and scalers for the web form-->
    <!--Give title for web form-->
    <title>Enrollment View</title> <!--Title given to web form-->
     <!--Add link in script src to allow use of jquery-->
    <!--Use CSS styling to create borders for table, data cells, and header and apply hover to data rows-->
    <style>
        table, td, th {
            border: 2px solid black;
        }
        tr:hover td {
            background-color:antiquewhite;
        }
    </style>
</head>
<body>
         <label style=" font-size:50px">Enrollment</label> <!--Create a label and increase font size so that enrollment can be seen as the main view-->
 <!--Create table to hold data in cells of columns and rows-->
 <table id="enrollmentTable" height="150" text-align="center"> <!--Customize the table's height and apply text align-->
     <tr bgcolor="gray"> <!--Apply gray as the background color of the header row-->
         <th style="text-align:center" height="10" width="200">Term</th> <!--Create Term header and apply height, width, and center alignment-->
         <th style="text-align:center" height="10" width="200">Course</th> <!--Create Course header and apply height, width, and center alignment-->
         <th style="text-align:center" height="10" width="200">ID</th> <!--Create ID header and apply height, width, and center alignment-->
         <th style="text-align:center" height="10" width="200">CRN</th> <!--Create CRN header and apply height, width, and center alignment-->
         <th style="text-align:center" height="10" width="200">Students</th> <!--Create Students header and apply height, width, and center alignment-->
     </tr>
     <tr bgcolor="white"> <!--Apply white as the background color of the first row of data-->
         <td align="center">202520</td> <!--Create first data cell of row 2 and apply center alignment to data-->
         <td align="center">CIS-150</td> <!--Create second data cell of row 2 and apply center alignment to data-->
         <td align="center">202520-23456</td> <!--Create third data cell of row 2 and apply center alignment to data-->
         <td align="center">23456</td> <!--Create fourth data cell of row 2 and apply center alignment to data-->
         <td align="center">##</td> <!--Create fifth data cell of row 2 and apply center alignment to data-->
     </tr>
     <tr bgcolor="white"> <!--Apply white as the background color of the second row of data-->
         <td align="center">202310</td> <!--Create first data cell of row 3 and apply center alignment to data-->
         <td align="center">CIS-215</td> <!--Create second data cell of row 3 and apply center alignment to data-->
         <td align="center">202310-15678</td> <!--Create third data cell of row 3 and apply center alignment to data-->
         <td align="center">15678</td> <!--Create fourth data cell of row 3 and apply center alignment to data-->
         <td align="center">##</td> <!--Create fifth data cell of row 3 and apply center alignment to data-->
     </tr>
     <tr bgcolor="white"> <!--Apply white as the background color of the third row of data-->
         <td align="center">202420</td> <!--Create first data cell of row 4 and apply center alignment to data-->
         <td align="center">ART-1000</td> <!--Create second data cell of row 4 and apply center alignment to data-->
         <td align="center">202420-27851</td> <!--Create third data cell of row 4 and apply center alignment to data-->
         <td align="center">27851</td> <!--Create fourth data cell of row 4 and apply center alignment to data-->
         <td align="center">##</td> <!--Create fifth data cell of row 4 and apply center alignment to data-->
     </tr>
     <tr bgcolor="white"> <!--Apply white as the background color of the fourth row of data-->
         <td align="center">202520</td> <!--Create first data cell of row 5 and apply center alignment to data-->
         <td align="center">HED-2256</td> <!--Create second data cell of row 5 and apply center alignment to data-->
         <td align="center">202520-24567</td> <!--Create third data cell of row 5 and apply center alignment to data-->
         <td align="center">24567</td> <!--Create fourth data cell of row 5 and apply center alignment to data-->
         <td align="center">##</td> <!--Create fifth data cell of row 5 and apply center alignment to data-->
     </tr>

 </table>

    </body>

</asp:Content>
