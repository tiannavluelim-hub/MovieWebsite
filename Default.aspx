<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SMSAssessment._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <center>
            <h1 id="aspnetTitle">Welcome to Film Slate</h1>
            <asp:Button ID="BrowseButton" runat="server" Text="Browse Films" CssClass="button" style="height: 50px; padding: 8px;" OnClick="BrowseButton_Click"/>
        </center>
    </main>

</asp:Content>
