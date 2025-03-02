<%@ Page Title="Section View" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SectionView.aspx.cs" Inherits="coding_lms.SectionView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!---Header--->
  <div class="d-flex mb-3">
     <div class="me-auto p-2">
        <h1>Sections</h1>
    </div>
   </div>
<!---------->

 <!----Section View Table---->
   <main>
       
     <div>
         <div>
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
        <tbody>
          <!--PlaceHolder Data-->
            <tr id="tablehead">
                <td>loremmmmmmmmmmmmmm</td>
                <td>loremmmmmmmmm</td>
                <td>loremmmmmmmmmmmmmmmmmmmmmmmmmmmm</td>
                <td>loremmmmm</td>
                <td>loremmmmmmmmmmmmmmmmmmm</td>
            </tr>
           <tr>
                <td>lorem</td>
                <td>lorem</td>
                <td>lorem</td>
                <td>lorem</td>
                <td>lorem</td>
            </tr>
           <tr>
               <td>Egg</td>
               <td>Cheese</td>
               <td>Bread</td>
               <td>Pizza</td>
               <td>Garlic</td>
            </tr>
           <tr>
               <td>Chicken</td>
               <td>Beef</td>
               <td>Sheep</td>
               <td>Shark</td>
               <td>Wheat</td>
            </tr>
          <!---------------------->
        </tbody>
    </table>
         </div>
     </div>

   </main>
 <!-------------------------->

  <!--Scripts-->
   <script defer src="Content/bootstrap.css"></script>
  <!----------->
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
</asp:Content>