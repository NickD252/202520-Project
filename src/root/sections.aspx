<%@ Page Title="Section View" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sections.aspx.cs" Inherits="coding_lms.SectionView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!---Header--->
  <div class="d-flex justify-content-center">
     
        <h1>Sections</h1>
   
   </div>
<!---------->

    <!--- New Sections Table --->
    <asp:Repeater ID="sectionsTable" runat="server">
        <HeaderTemplate>
           <div class="d-flex justify-content-center">
            <table id="sectionViewTable" class="w-75 table table-bordered table-striped table-hover">
                 <thead  class="table-secondary text-center"">
                  <tr>
                    <th width="5%">&nbsp;Term</th>
                    <th width="5%">&nbsp;Course</th>
                    <th width="5%">&nbsp;ID</th>
                    <th width="5%">&nbsp;CRN</th>
                    <th width="5%">&nbsp;Students</th>
                  </tr>
                 </thead>
        </HeaderTemplate>
        <ItemTemplate>
                
                 <tr>
                     <td><%# Eval("Term") %></td>
                     <td><%# Eval("Course") %></td>
                     <td><%# Eval("Term") %>-<%# Eval("CRN") %></td>
                     <td><%# Eval("CRN") %></td>
                     <td><%# Eval("StudentCount") %></td>
                 </tr>
              
        </ItemTemplate>
        <FooterTemplate>
            </table>
           </div>
        </FooterTemplate>
    </asp:Repeater>
    <!----------->


    

 

 
    
<!--------------->
     <!--Scripts-->
   <script defer src="Content/bootstrap.css"></script>
   <script defer src="Content/sections.css"></script>
   <script defer src="Scripts/sectionsview.js"></script>
   <script defer src="Scripts/terms_view.js"></script>
   <script defer src="Scripts/profileMenu.js"></script>
  <!----------->
    
</asp:Content>