<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="coding_lms.students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <main aria-labelledby="title">

        
        <script defer src="Content/bootstrap.css"></script>

     
        
     <h1>Student</h1>
         <!-- lines 49-171: student dialog box design -->
         <div class="modal" id="editStdnt">
             
             <div class="modal-dialog modal-dialog-centered">
                 <div class="modal-content">
                     <div class="modal-body">
                         <div class="d-flex flex-row justify-content-evenly">

                             <div class="d-flex flex-column justify-content-start">

                                 <h3 class="d-flex flex-row justify-content-start">Name</h3>
                                 <!-- Last Name input -->
                                 <div class="input-group_mb-1">

                                     <span class="input-group-text">Last:</span>
                                     <input id="lastNameInput" type="text" class="form-control" placeholder="Line 1" aria-label="Line 1" aria-describedby="lastNameInput" />

                                 </div>
                                 <!-- First Name input -->
                                 <div class="input-group_mb-2">

                                     <span class="input-group-text">First:</span>
                                     <input id="firstNameInput" type="text" class="form-control" placeholder="Line 1" aria-label="Line 1" aria-describedby="firstNameInput" />

                                 </div>

                                 <hr/>

                                 <h3>Group</h3>
                                 <!-- Record # input -->
                                 <div class="input-group_mb-3">

                                     <span class="input-group-text">Record #:</span>
                                     <input id="recordNumInput" type="text" class="form-control" placeholder="Line 1" aria-label="Line 1" aria-describedby="recordNumInput"/>

                                 </div>
                                 <!-- Email input -->
                                 <div class="input-group_mb-4">

                                     <span class="input-group-text">Email:</span>
                                     <input id="emailInput" type="text" class="form-control" placeholder="Line 1" aria-label="Line 1" aria-describedby="emailInput" />

                                 </div>


                             </div>
                             <!-- lines 95-158 Grade Dialog Entries (right hand side of the dialog box) -->
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
                     <!-- dialog footer with cancel and create buttons -->
                     <div class="modal-footer d-flex flex-row justify-content-between">

                         <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                         <button id="createBtn" type="button" class="btn btn-success">Create</button>

                     </div>

                 </div>

             </div>

         </div>

         <!-- default page table -->
     <asp:Repeater ID="studentRepeat" runat="server">

         <HeaderTemplate>
             <table class="table">
                 <thead>

                     <tr>

                         <th>Last</th>
                         <th>First</th>
                         <th>Email</th>

                     </tr>

                 </thead>
         </HeaderTemplate>
         <ItemTemplate>

             <tbody id="stdntTblBdy">

                 <tr>

                     <td id="lstNme"><%# Eval("LastName") %></td>
                     <td id="frstNme"><%# Eval("FirstName") %></td>
                     <td id="email"><%# Eval("Email") %></td>
                     <td id="rcrdNum"><%# Eval("SRN") %></td>

                 </tr>

             </tbody>


         </ItemTemplate>
         <FooterTemplate>
             <table>


         </FooterTemplate>

     </asp:Repeater>

 </main>

</asp:Content>
