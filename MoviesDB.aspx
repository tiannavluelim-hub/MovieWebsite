<%@ Page Title="Movies" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MoviesDB.aspx.cs" Inherits="SMSAssessment.MoviesDB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:SqlDataSource ID="MoviesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:SMS_ConnectionString %>" SelectCommand="SELECT * FROM [Movies]"></asp:SqlDataSource> <!--retrieve movie details from database-->

    <center>
        <h3>Search By Genre or Director Name</h3>
        <asp:Label ID="Label_SearchInstructions" runat="server" Text="Select a search category from the dropbox, then click the button to search by category" Font-Italic="true" ></asp:Label><br /><br />
        
        <!--allow users to narrow their search criteria-->
        <asp:DropDownList ID="SearchCategory" runat="server" CssClass="dropbox" OnSelectedIndexChanged="SearchCategory_SelectedIndexChanged" AutoPostBack="true" Width="200px">
            <asp:ListItem Value="All">All Movies</asp:ListItem>
            <asp:ListItem Value="Genre">Genre</asp:ListItem>
            <asp:ListItem Value="Director">Director</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="MovieGenres" runat="server" CssClass="dropbox" Visible="false" Width="200px"></asp:DropDownList>
        <asp:DropDownList ID="Directors" runat="server" CssClass="dropbox" Visible="false" Width="200px"></asp:DropDownList>
        <asp:Button ID="Button_Search" runat="server" Text="Search" OnClick="Button_Search_Click" CssClass="button" Height="30px"/>

        <br />
        <asp:Label ID="Label_Director" runat="server" Text="Movies directed by " Visible="false"></asp:Label>
        <asp:Label ID="Label_DirectorName" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Label ID="Label_GenreName" runat="server" Text="" Visible="false"></asp:Label>
        <br />
    </center>

    <!--show all movies in database-->
    <div id="moviesList" runat="server">
        <asp:DataList ID="DataListMovies" runat="server" DataSourceID="MoviesDataSource" OnItemCommand="DataListMovies_ItemCommand" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="movieDataList" DataKeyField="movieID" HorizontalAlign="Center">
            <ItemStyle CssClass="movieItem" />
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton_MoviePoster" runat="server" ImageUrl='<%# Eval("moviePosterURL") %>' AlternateText='<%# Eval("movieTitle") %>' Style="width:170px; height:210px;" CommandName="View" CommandArgument='<%# Eval("movieID") %>'/>
                <br/>
                <asp:LinkButton ID="LinkButton_MovieTitle" runat="server" Font-Bold="true" Text='<%# Eval("movieTitle") %>' CommandName="View" CommandArgument='<%# Eval("movieID") %>'></asp:LinkButton>
                <br />
                <asp:Label ID="releaseYearLabel" runat="server" Text='<%# Eval("releaseYear") %>' />
                <br />
            </ItemTemplate>
        </asp:DataList>
    </div>

    <!--view selected movie-->
    <div id="viewMovie" runat="server" visible="false">
        <asp:Button ID="Button_Return" runat="server" Text="Return to Movies" CssClass="button" Height="35px" OnClick="Button_Return_Click"/><br /><br />
        
        <h4><asp:Label ID="View_Title" runat="server" Text="movieTitle"></asp:Label><asp:Label ID="View_Year" runat="server" Text="releaseYear" Font-Italic="true"></asp:Label></h4>
        
        <div id="movieDetails" class="row" runat="server">
            <section class="col-md-2">   
                <asp:Image ID="View_Image" runat="server" Height="280px" Width="200px"/>
            </section>
            <section class="col-md-6">
                <asp:Button ID="Button_AddToCollection" runat="server" Text="Add to Collection" CssClass="button" Height="40px" OnClick="Button_AddToCollection_Click"/>
                <asp:DropDownList ID="DropDownList_Rating" runat="server" Height="40px">
                    <asp:ListItem Value="0">Add Rating</asp:ListItem>
                    <asp:ListItem Value="10">(10) Masterpiece</asp:ListItem>
                    <asp:ListItem Value="9">(9) Great</asp:ListItem>
                    <asp:ListItem Value="8">(8) Very Good</asp:ListItem>
                    <asp:ListItem Value="7">(7) Good</asp:ListItem>
                    <asp:ListItem Value="6">(6) Fine</asp:ListItem>
                    <asp:ListItem Value="5">(5) Average</asp:ListItem>
                    <asp:ListItem Value="4">(4) Bad</asp:ListItem>
                    <asp:ListItem Value="3">(3) Very Bad</asp:ListItem>
                    <asp:ListItem Value="2">(2) Terrible</asp:ListItem>
                    <asp:ListItem Value="1">(1) Appalling</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button_RemoveFromCollection" runat="server" Text="Remove from Collection" CssClass="button" Height="40px" OnClick="Button_RemoveFromCollection_Click" Visible="false"/>
                <br /><br />

                <b>Directed by: </b><asp:Label ID="View_Director" runat="server" Text="directorName"></asp:Label>
                <br />
                <b>Genres: </b>
                <asp:Label ID="View_Genre1" runat="server" Text="genreName1"></asp:Label>
                <asp:Label ID="View_Genre2" runat="server" Text="genreName2"></asp:Label>
                <asp:Label ID="View_Genre3" runat="server" Text="genreName3"></asp:Label>
                <asp:Label ID="View_Genre4" runat="server" Text="genreName4"></asp:Label>
                
                <br /><asp:Label ID="View_ID" runat="server" Visible="false"></asp:Label><br />
                
                <asp:Label ID="View_Description" runat="server" Text="Description"></asp:Label> 
             </section>
        </div> <!--movieDetails-->
    </div> <!--viewMovie-->
</asp:Content>
