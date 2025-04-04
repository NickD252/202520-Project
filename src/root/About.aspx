<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="root.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="about-content" aria-labelledby="title">
        
        <div class="aboutcontent1">
        <h3 id="title"><strong><%: Title %></strong></h3>
        <p>Welcome to [enter website name later]. This quiz website was created by computer science students for the use of computer science students at Jefferson State Community College! 
           On this website, you will be able to take tests, review past scores, and look at work during a specific term and year. If you want to register an account and get started, click
           "Register".
        </p>
        </div>
        <div class="aboutcontent2">
        <h3><strong>What We Offer</strong></h3>
            <ul>
                <li>Quizzes - You can test your knowledge on different computer science topics.</li>
                <li>Personalized Accounts - Track your progress and review past scores from various terms.</li>
            </ul>
        </div>
        <div class="aboutcontent3">
        <h3><strong>Who can use this website?</strong></h3>
        <p>This website was created for Jeff State students, but may be expanded to a wider scope of users!</p>
        </div>
    </main>
</asp:Content>
