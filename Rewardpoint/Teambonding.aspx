<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teambonding.aspx.cs" Inherits="Rewardpoint.Teambonding" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <table style="width: 100%;">
        <tr>
            <td style="border: medium solid #800000; background-color: #FFFFFF; width: 338px;">
                &nbsp;</td>
            <td style="border: medium solid #800000; background-color: #FFFFFF;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="border: medium solid #800000; width: 338px;">
                <asp:TreeView ID="TreeView1" runat="server" Height="499px" LineImagesFolder="~/TreeLineImages" ShowLines="True" Width="345px" BackColor="#E1D8EB" BorderColor="#660066" BorderStyle="Groove" Font-Bold="True" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="#6600CC">
                    <Nodes>
                        <asp:TreeNode Expanded="True" Text="Nomination" Value="Award category">
                            <asp:TreeNode Text="#BeTheTeam" Value="#BeTheTeam">
                                <asp:TreeNode Expanded="False" NavigateUrl="~/Teambonding.aspx" Text="Team Bonding" Value="Team Bonding"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="#ThePerfect" Value="#ThePerfect">
                                <asp:TreeNode NavigateUrl="~/nohumanerror.aspx" Text="No Human Error" Value="No Human Error"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/noescalation.aspx" Text="No Escalation" Value="No Escalation"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/processadherence.aspx" Text="Process Adherence" Value="Process Adherence"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/SLATimelydelivery.aspx" Text="SLA/Timely Delivery" Value="SLA/Timely Delivery"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/CustomerSatisfaction.aspx" Text="Customer Satisfaction" Value="Customer Satisfaction"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="#TheAce" Value="#TheAce">
                                <asp:TreeNode NavigateUrl="~/Proactiveness.aspx" Text="Proactiveness" Value="Proactiveness"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/ExtendedSupport.aspx" Text="Extended Support" Value="Extended Support"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/Hardworking.aspx" Text="Hard Working" Value="Hard Working"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="#ThnkingHat" Value="#ThnkingHat">
                                <asp:TreeNode NavigateUrl="~/sip.aspx" Text="SIP" Value="SIP"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/Script.aspx" Text="Script" Value="Script"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/ideas.aspx" Text="Automation Ideas" Value="Automation Ideas"></asp:TreeNode>
                            </asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Expanded="False" Text="Nomination Status" Value="Nomination Status">
                            <asp:TreeNode Text="Self" Value="Self"></asp:TreeNode>
                            <asp:TreeNode Text="Team" Value="Team"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Expanded="False" Text="Winner" Value="Winner">
                            <asp:TreeNode Text="Monthly" Value="WinnerList"></asp:TreeNode>
                            <asp:TreeNode Text="Quarterly" Value="Quarterly"></asp:TreeNode>
                            <asp:TreeNode Text="Yearly" Value="Yearly"></asp:TreeNode>
                            <asp:TreeNode Text="Special" Value="Special"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Expanded="False" Text="Project Summary" Value="Project">
                            <asp:TreeNode Text="Report" Value="Details"></asp:TreeNode>
                            <asp:TreeNode Text="Details" Value="Details"></asp:TreeNode>
                        </asp:TreeNode>
                    </Nodes>
                    <RootNodeStyle BackColor="White" Font-Bold="True" Font-Size="Large" />
                </asp:TreeView>
            </td>
            <td style="border: medium solid #800000">
                <table style="width:100%;">
                    <tr>
                        <td style="height: 22px; width: 292px"><strong style="font-size: medium; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Select Your Team name</strong></td>
                        <td style="height: 22px; width: 170px"></td>
                        <td style="height: 22px">
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Project_Name" DataValueField="Project_Name" Height="46px" Width="216px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet-RewardPoints-20180503074710ConnectionString %>" SelectCommand="SELECT [Project_Name] FROM [Project]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 292px">&nbsp;</td>
                        <td style="width: 170px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 292px; height: 24px">Nominate Your Teammate for a good reason</td>
                        <td style="width: 170px; height: 24px">
                            <asp:DropDownList ID="DropDownList2" runat="server" Width="214px">
                                <asp:ListItem>Arvind</asp:ListItem>
                                <asp:ListItem>Pooja</asp:ListItem>
                                <asp:ListItem>Smarika</asp:ListItem>
                                <asp:ListItem>Sudhakar</asp:ListItem>
                                <asp:ListItem>Pavani</asp:ListItem>
                                <asp:ListItem>Kirti</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="height: 24px">
                            <asp:TextBox ID="TextBox2" runat="server" Width="342px">Comment</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 292px">Number of Events Organized</td>
                        <td style="width: 170px">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Width="342px">Comment</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 292px">Number of Events attended</td>
                        <td style="width: 170px">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Width="341px">Comment</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 292px">&nbsp;</td>
                        <td style="width: 170px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 292px">&nbsp;</td>
                        <td style="width: 170px">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="129px" />
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server" ForeColor="#3333FF" Text="Nomination submitted Successfully!" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        </table>
    <p>
        &nbsp;</p>
</asp:Content>
