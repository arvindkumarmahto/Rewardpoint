<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SLATimelydelivery.aspx.cs" Inherits="Rewardpoint.SLATimelydelivery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <table style="width: 137%;">
        <tr>
            <td style="border-color: #FFFF00; width: auto; height: auto;" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="border-color: #FFFF00; width: 335px; height: auto;">
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
            <td style="border-color: #FFFF00; width: auto; height: auto;">
                <table style="width: 100%;">
                    <tr>
                        <td style="border-color: #FFFFFF" colspan="7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="text-decoration: underline"><strong>SLA or TimeDelivery</strong></span><br />
                            <br />
                        </td>
                        <td style="border-color: #FFFFFF">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">Month</td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">TaskType</td>
                        <td style="width: 182px; height: auto; border-color: #FFFFFF">Task Category</td>
                        <td style="width: 138px; height: auto; border-color: #FFFFFF">Task Count</td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">Time Taken</td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">SLA</td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">SLA Category</td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DefaultConnection">
                                <asp:ListItem>January</asp:ListItem>
                                <asp:ListItem>February</asp:ListItem>
                                <asp:ListItem>March</asp:ListItem>
                                <asp:ListItem>April</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>June</asp:ListItem>
                                <asp:ListItem>July</asp:ListItem>
                                <asp:ListItem>August</asp:ListItem>
                                <asp:ListItem>September</asp:ListItem>
                                <asp:ListItem>October</asp:ListItem>
                                <asp:ListItem>November</asp:ListItem>
                                <asp:ListItem>December</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="DefaultConnection" runat="server"></asp:SqlDataSource>
                        </td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">
                            <asp:DropDownList ID="DropDownList2" runat="server" Height="23px" Width="88px">
                                <asp:ListItem>ICM</asp:ListItem>
                                <asp:ListItem>VSO</asp:ListItem>
                                <asp:ListItem>SNOW</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 182px; height: auto; border-color: #FFFFFF">
                            <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem>Simple</asp:ListItem>
                                <asp:ListItem>Medium</asp:ListItem>
                                <asp:ListItem>complex</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 138px; height: auto; border-color: #FFFFFF">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">
                            <asp:Button ID="Button3" runat="server" OnClick="Button2_Click" Text="Add" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">&nbsp;</td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">&nbsp;</td>
                        <td style="width: 182px; height: auto; border-color: #FFFFFF">&nbsp;</td>
                        <td style="width: 138px; height: auto; border-color: #FFFFFF">
                            &nbsp;</td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">&nbsp;</td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">
                            &nbsp;</td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">
                            &nbsp;</td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">&nbsp;</td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">&nbsp;</td>
                        <td style="width: 182px; height: auto; border-color: #FFFFFF">&nbsp;</td>
                        <td style="width: 138px; height: auto; border-color: #FFFFFF">
                            <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click" Text="Submit" Width="125px" />
                        </td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">&nbsp;</td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">&nbsp;</td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">&nbsp;</td>
                        <td style="width: auto; height: auto; border-color: #FFFFFF">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="border-color: #FFFF00; width: 335px; height: auto;">
                &nbsp;</td>
            <td style="border: medium solid #800000">
                &nbsp;</td>
        </tr>
        </table>
    <p>
        &nbsp;</p>
</asp:Content>
