<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Rewardpoint._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2 style="color: #800000"> We are human beings. We operate from wanting to be rewarded</h2><p></p>
        <p></p>
        <h2 style="font-family: Verdana, Geneva, Tahoma, sans-serif; color: #0000FF"><marquee Direction="left">Now Reward and Recognition is in your hand!!!</marquee></h2>
        <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; color: #0000FF">&nbsp;</p>
        <p class="lead">Your good work always payback. Please click on Reward Me now...</p>
        <p class="lead">&nbsp;</p>
        <%--<p><a href="Rewardme.aspx" class="btn btn-primary btn-lg">Reward Me &raquo;</a></p>--%>
            <p>
            <asp:Button ID="Button1" runat="server" ForeColor="#990099" OnClick="Button1_Click" Text="Reward Me &gt;&gt;" ToolTip="Reward!" Width="151px" />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Label" Visible="False"></asp:Label>
        </p>
    </div>

    </asp:Content>
