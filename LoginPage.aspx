<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="SMSAssessment.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <div id="userLogin" runat="server">
            <h1>User Login</h1>
            <asp:TextBox ID="TextBox_Username" runat="server" CssClass="textbox" placeholder="Enter your username" MaxLength="25"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox_Password" runat="server" CssClass="textbox" placeholder="Enter your password" TextMode="Password" MaxLength="25"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button_Login" runat="server" Text="Login" CssClass="button" Height = "40px" Width="100px" OnClick="Button_Login_Click"/><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator_Username" runat="server" ErrorMessage="Username cannot be blank. " ForeColor="Red" ControlToValidate="TextBox_Username"></asp:RequiredFieldValidator><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator_Password" runat="server" ErrorMessage="Password cannot be blank." ForeColor="Red" ControlToValidate="TextBox_Password"></asp:RequiredFieldValidator><br />
            <asp:Label ID="Label_LoginError" runat="server" Text="Invalid username or password." Visible="false" ForeColor="Red"></asp:Label>
        </div>



    </center>

    <!--Add section for if user is already logged in. Ask if they want to log out.-->
    <div id="userLoggedIn" runat="server" visible="false">
        You are already logged in as
        <asp:Label ID="Label_LoggedInUsername" runat="server" Text="username" Font-Bold="true" Font-Size="Larger"></asp:Label>
        
        <p>Would you like to log out?</p>
        <asp:Button ID="Button_Logout" runat="server" Text="Log Out" CssClass="button" Height="40px" Width="100px" OnClick="Button_Logout_Click"/>
    </div>
</asp:Content>