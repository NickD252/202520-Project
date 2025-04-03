<%@ Page Title="Section View" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sections.aspx.cs" Inherits="coding_lms.SectionView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!---Header--->
  <div class="d-flex mb-3">
     <div class="me-auto p-2">
        <h1>Sections</h1>
    </div>
   </div>
<!---------->

    <!--- New Sections Table --->
    <asp:Repeater ID="sectionsTable" runat="server">
        <HeaderTemplate>
            <table id="sectionViewTable" class="table table-striped table-hover">
                 <thead class="table-secondary">
                  <tr>
                    <th width="10%">&nbsp;Term</th>
                    <th width="10%">&nbsp;Course</th>
                    <th width="10%">&nbsp;ID</th>
                    <th width="10%">&nbsp;CRN</th>
                    <th width="10%">&nbsp;Students</th>
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
        </FooterTemplate>
    </asp:Repeater>
    <!----------->


    


   <main>
       
    

   </main>
 

 
    <!--CSS Styling-->
    <header>
      <style>
          table, th, td {
          border: 1px solid black;
          border-collapse: collapse;
          }
          th {
          text-align: center;
         
          }
          #tablehead{
          
          }
      </style>
    </header>
<!--------------->
     <!--Scripts-->
   <script defer src="Content/bootstrap.css"></script>
   <script defer src="Scripts/sectionsview.js"></script>
   <script defer src="Scripts/terms_view.js"></script>
  <!----------->
    
</asp:Content>