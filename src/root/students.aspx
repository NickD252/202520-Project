<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="students.aspx.cs" Inherits="coding_lms.students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <main aria-labelledby="title">

     <style>

         tr:hover{

             background-color: grey;

         }

         td a{

             display: block;
             border-color: transparent;

         }

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

         <tr>

             <td><a href="#">Text</a></td>
             <td><a href="#">Text</a></td>
             <td><a href="#">identifier@domain.tld</a></td>

         </tr>

         <tr>

             <td><a href="#">Text</a></td>
             <td><a href="#">Text</a></td>
             <td><a href="#">identifier@domain.tld</a></td>

         </tr>

         <tr>

             <td><a href="#">Text</a></td>
             <td><a href="#">Text</a></td>
             <td><a href="#">identifier@domain.tld</a></td>

         </tr>

         <tr>

             <td><a href="#">Text</a></td>
             <td><a href="#">Text</a></td>
             <td><a href="#">identifier@domain.tld</a></td>

         </tr>



     </table>

 </main>

</asp:Content>
