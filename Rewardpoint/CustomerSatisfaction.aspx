<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerSatisfaction.aspx.cs" Inherits="Rewardpoint.CustomerSatisfaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <table style="width: 100%;">
        <tr>
            <td style="border: medium solid #800000; background-color: #FFFFFF;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="border: medium solid #800000; width: 338px;">
                <asp:TreeView ID="TreeView1" runat="server" Height="493px" LineImagesFolder="~/TreeLineImages" ShowLines="True" Width="341px" BackColor="#E1D8EB" BorderColor="#660066" BorderStyle="Groove" Font-Bold="True" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="#6600CC">
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
            <td style="background-color: #FFCCCC;">
                <table style="width:100%;" border="1">
                    <tr style="border-color: #000000">
                        <td style="border-width: 1px;" >Month</td>
                        <td style="border-width: 1px;">Task Type</td>
                        <td style="border-width: 1px;">Task Count</td>
                        <td style="border-width: 1px;">Time Taken</td>
                        <td style="border-width: 1px;">Feedback </td>
                        <td style="border-width: 1px;">Source</td>
                        <td style="border-width: 1px;">Validate</td>
                    </tr>
                    <tr>
                        <td style="width: 83px">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="88px">
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
                        </td>
                        <td style="width: 96px">
                            <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="90px">
                                <asp:ListItem>ICM</asp:ListItem>
                                <asp:ListItem>Service NOW</asp:ListItem>
                                <asp:ListItem>VSO - Bug</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 77px">
                            <asp:TextBox ID="TextBox1" runat="server" Width="108px"></asp:TextBox>
                        </td>
                        <td style="width: 105px">
                            <asp:TextBox ID="TextBox2" runat="server" Width="75px"></asp:TextBox>
                        </td>
                        <td style="width: 77px">
                            <asp:TextBox ID="TextBox3" runat="server" Width="100px"></asp:TextBox>
                        </td>
                        <td style="width: 111px">
                            <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="99px">
                                <asp:ListItem>Email</asp:ListItem>
                                <asp:ListItem>Portal</asp:ListItem>
                                <asp:ListItem>Survey</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 67px">
                            <asp:RadioButton ID="RadioButton1" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" />
                        </td>
                    </tr>
                                     </table>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="122px" />
            </td>
        </tr>
        <tr>
            <td style="border: medium solid #800000; width: 338px;">
                &nbsp;</td>
            <td style="background-color: #FFCCCC;">
                &nbsp;</td>
        </tr>
        </table>
    </asp:Content>
