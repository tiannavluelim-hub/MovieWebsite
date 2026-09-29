<%@ Page Title="Your Collection" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Collection.aspx.cs" Inherits="SMSAssessment.Collection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Your Collection</h1>
    <div id="userNotLoggedIn" runat="server" visible="false">
            Log in or create an account to save your collection to Film Slate
    </div>
    <div id="userCollection" runat="server" visible="false">
        <asp:Label ID="Label_Username" runat="server" Text="username" Font-Bold="true" Font-Size="Larger"></asp:Label>
        <asp:GridView ID="GridView_Collection" runat="server" CssClass="gridview" AutoGenerateColumns="False"  OnRowCommand="GridView_Collection_RowCommand" GridLines="Horizontal" allowpaging="true" BorderStyle="None">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image_MoviePoster" runat="server" ImageUrl='<%# Eval("moviePoster") %>' AlternateText='<%# Eval("movieTitle") %>' Style="width:165px; height:210px;"/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="movieTitle" HeaderText=""/>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button_ViewDetails" runat="server" Text="Details" CssClass="button" Height="40px" CommandName="View" CommandArgument='<%# Eval("movieID") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
