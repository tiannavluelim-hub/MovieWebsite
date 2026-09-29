<%@ Page Title="Create Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="SMSAssessment.CreateAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <div id="createAccount" runat="server">
            <h1>Create Film Slate Account</h1>
            <asp:TextBox ID="TextBox_FirstName" runat="server" CssClass="textbox" placeholder="* Enter First Name" MaxLength="40"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox_LastName" runat="server" CssClass="textbox" placeholder="Enter Last Name" MaxLength="40"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox_Username" runat="server" CssClass="textbox" placeholder="* Create Username" MaxLength="25"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox_Password" runat="server" CssClass="textbox" placeholder="* Create Password" TextMode="Password" MaxLength="25"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button_CreateAccount" runat="server" Text="Create Account" CssClass="button" Height = "40px" Width="150px" OnClick="Button_CreateAccount_Click"/><br />
            <!--validation-->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator_FirstName" runat="server" ErrorMessage="First name cannot be blank." ForeColor="Red" ControlToValidate="TextBox_FirstName"></asp:RequiredFieldValidator><br />
            <asp:Label ID="Label_UsernameTakenError" runat="server" Text="Username is already in use. Please choose a different username." Visible="false" ForeColor="Red"></asp:Label><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator_Username" runat="server" ErrorMessage="Username cannot be blank. " ForeColor="Red" ControlToValidate="TextBox_Username"></asp:RequiredFieldValidator><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator_Password" runat="server" ErrorMessage="Password cannot be blank." ForeColor="Red" ControlToValidate="TextBox_Password"></asp:RequiredFieldValidator><br />
        </div>
    </center>
</asp:Content>
