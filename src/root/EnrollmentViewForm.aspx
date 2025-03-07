<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnrollmentViewForm.aspx.cs" Inherits="coding_lms.EnrollmentViewForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--Specify which charset to use-->
    <meta charset="UTF-8" /> <!--Initialize UTF-8 as meta charset for web form so that all characters will render properly-->
    <!--Use viewport to scale and size the page-->
    <meta name="viewport" content="width=device-width, initial scale=1.0" /> <!--Initialize viewport and scalers for the web form-->
    <!--Give title for web form-->
    <title>Enrollment View</title> <!--Title given to web form-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> <!--Add link in script src to allow use of jquery-->
</head>
<body>
    <form id="form1" runat="server">
    <label style=" font-size:50px">Enrollment</label> <!--Create a label and increase font size so that enrollment can be seen as the main view-->
    <!--Create table to hold data in cells of columns and rows-->
    <table border="2px" bgcolor="black" height="150" text-align="center"> <!--Customize the table's border, color, height, and apply text align-->
        <tr bgcolor="gray"> <!--Apply gray as the background color of the header row-->
            <th height="10" width="200">Term</th> <!--Create Term header and apply height and width-->
            <th height="10" width="200">Course</th> <!--Create Course header and apply height and width-->
            <th height="10" width="200">ID</th> <!--Create ID header and apply height and width-->
            <th height="10" width="200">CRN</th> <!--Create CRN header and apply height and width-->
            <th height="10" width="200">Students</th> <!--Create Students header and apply height and width-->
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

     </form>
</body>
</html>
