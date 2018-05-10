<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="processadherence.aspx.cs" Inherits="Rewardpoint.processadherence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <table style="width: 100%;">
        <tr>
            <td style="border: medium solid #800000">
                <asp:TreeView ID="TreeView1" runat="server" Height="499px" LineImagesFolder="~/TreeLineImages" ShowLines="True" Width="345px" BackColor="#E1D8EB" BorderColor="#660066" BorderStyle="Groove" Font-Bold="True" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="#6600CC">
                    <Nodes>
                        <asp:TreeNode Expanded="True" Text="Nomination" Value="Award category">
                            <asp:TreeNode Text="#BeTheTeam" Value="#BeTheTeam">
                                <asp:TreeNode Expanded="False" NavigateUrl="~/Teambonding.aspx" Text="Team Bonding" Value="Team Bonding"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Expanded="False" Text="#ThePerfect" Value="#ThePerfect">
                                <asp:TreeNode NavigateUrl="~/nohumanerror.aspx" Text="No Human Error" Value="No Human Error"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/noescalation.aspx" Text="No Escalation" Value="No Escalation"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/processadherence.aspx" Text="Process Adherence" Value="Process Adherence"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/SLATimelydelivery.aspx" Text="SLA/Timely Delivery" Value="SLA/Timely Delivery"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/CustomerSatisfaction.aspx" Text="Customer Satisfaction" Value="Customer Satisfaction"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Expanded="False" Text="#TheAce" Value="#TheAce">
                                <asp:TreeNode NavigateUrl="~/Proactiveness.aspx" Text="Proactiveness" Value="Proactiveness"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/ExtendedSupport.aspx" Text="Extended Support" Value="Extended Support"></asp:TreeNode>
                                <asp:TreeNode NavigateUrl="~/Hardworking.aspx" Text="Hard Working" Value="Hard Working"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Expanded="False" Text="#ThnkingHat" Value="#ThnkingHat">
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
        </tr>
        </table>
    <p>
        &nbsp;</p>
</asp:Content>
