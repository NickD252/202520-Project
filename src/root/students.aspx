<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="students.aspx.cs" Inherits="coding_lms.students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <main aria-labelledby="title">

        <script defer src="Scripts/studentview-codebehind.js"></script>
        <script defer src="Content/bootstrap.css"></script>

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

         <div class="modal" id="editStdnt">

             <div class="modal-dialog modal-dialog-centered">
                 <div class="modal-content">
                     <div class="modal-body">
                         <div class="d-flex flex-row justify-content-evenly">

                             <div class="d-flex flex-column justify-content-start">

                                 <h3 class="d-flex flex-row justify-content-start">Name</h3>

                                 <div class="input-group mb-3">

                                     <span class="input-group-text" id="lastNameInput">Last:</span>
                                     <input type="text" class="form-control" placeholder="Line 1" aria-label="Line 1" aria-describedby="lastNameInput" />

                                 </div>

                                 <div class="input-group mb-3">

                                     <span class="input-group-text" id="firstNameInput">First:</span>
                                     <input type="text" class="form-control" placeholder="Line 1" aria-label="Line 1" aria-describedby="firstNameInput" />

                                 </div>

                                 <hr></hr>

                                 <h3>Group</h3>

                                 <div class="input-group mb-3">

                                     <span class="input-group-text" id="recordNumInput">Record #:</span>
                                     <input type="text" class="form-control" placeholder="Line 1" aria-label="Line 1" aria-describedby="recordNumInput" />

                                 </div>

                                 <div class="input-group mb-3">

                                     <span class="input-group-text" id="emailInput">Email:</span>
                                     <input type="text" class="form-control" placeholder="Line 1" aria-label="Line 1" aria-describedby="emailInput" />

                                 </div>


                             </div>

                             <div class="d-flex flex-column justify-content-evenly">

                                 <div class="d-flex flex-column justify-content-evenly">

                                     <h6 class="text-center">202520</h6>
                                     <h6 class="text-center">202510</h6>
                                     <h6 class="text-center">202430</h6>

                                 </div>

                                 <div>
                                      
                                     <table>

                                         <thead>

                                             <tr>

                                                 <td>Course</td>
                                                 <td>Section</td>

                                             </tr>

                                         </thead>

                                         <tbody>

                                             <tr>

                                                 <td>CIS-150</td>
                                                 <td>34367</td>

                                             </tr>

                                             <tr>

                                                 <td>HIS-100</td>
                                                 <td>35156</td>

                                             </tr>

                                             <tr>

                                                 <td>CIS-251</td>
                                                 <td>32657</td>

                                             </tr>

                                             <tr>

                                                 <td>MTH-100</td>
                                                 <td>31005</td>

                                             </tr>

                                         </tbody>

                                     </table>

                                 </div>

                                 <h6 class="text-center">202410</h6>

                             </div>

                         </div>
                         <div class="d-flex flex-column justify-content-center align-content-center">
                         </div>
                     </div>
                     <div class="modal-footer d-flex flex-row justify-content-between">
                         <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                         <button id="createBtn" type="button" class="btn btn-success">Create</button>
                     </div>
                 </div>
             </div>

         </div>


     <table class="table">

         <thead>

         <tr>

             <th>Last</th>
             <th>First</th>
             <th>Email</th>

         </tr>

         </thead>

         <tbody id="stdntTblBdy">

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

         </tbody>

     </table>

 </main>

</asp:Content>
