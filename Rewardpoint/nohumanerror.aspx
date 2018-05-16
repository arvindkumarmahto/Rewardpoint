<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="nohumanerror.aspx.cs" Inherits="Rewardpoint.nohumanerror" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <table class="nav-justified">
        <tr>
            <td style="border: medium solid #800000; background-color: #FFFFFF; width: 350px; height: 30px;">
                </td>
            <td style="border: medium solid #800000; background-color: #FFFFFF; height: 30px;">
                </td>
        </tr>
        <tr style="background-color: #99CCFF">
            <td style="border: medium solid #800000; width: 350px;">
                <asp:TreeView ID="TreeView1" runat="server" Height="499px" LineImagesFolder="~/TreeLineImages" ShowLines="True" Width="345px" BackColor="#E1D8EB" BorderColor="#660066" BorderStyle="Groove" Font-Bold="True" Font-Names="Calibri Light" Font-Size="Medium" ForeColor="#6600CC" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
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
                            <asp:TreeNode Text="#ThinkingHat" Value="#ThinkingHat">
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
            <td style="border: medium solid #800000; color: #0000FF; font-style: italic; font-weight: bold;">
                <table border="1" style="width: 100%;">
                    <tr>
                        <td style="color: #000000;">MONTH</td>
                        <td style="color: #000000;">Task Type</td>
                        <td style="color: #000000;">Task Category</td>
                        <td style="color: #000000;">task Count</td>
                        <td style="color: #000000;">Time taken</td>
                        <td style="color: #000000;">Task Link</td>
                        <td style="color: #000000;">Issues</td>
                        <td style="color: #000000;">Incident Type</td>
                        <td style="color: #000000;">Validation</td>
                    </tr>
                    <tr>
                        <td style="width: 90px">
                            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
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
                        <td style="width: 146px">
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem>VSO Bug</asp:ListItem>
                                <asp:ListItem>OSP Alert</asp:ListItem>
                                <asp:ListItem>ICM</asp:ListItem>
                                <asp:ListItem>SNOW Ticket</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 100px">
                            <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem>Urgent</asp:ListItem>
                                <asp:ListItem>Non-Urgent</asp:ListItem>
                                <asp:ListItem>Incident</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 80px">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                        <td style="width: 70px">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td style="width: 172px">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                        <td style="width: 75px">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                        <td style="width: 197px">
                            <asp:DropDownList ID="DropDownList4" runat="server">
                                <asp:ListItem>SEV 1</asp:ListItem>
                                <asp:ListItem>SEV 2</asp:ListItem>
                                <asp:ListItem>SEV 3</asp:ListItem>
                                <asp:ListItem>SEV 4</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 237px">
                            <asp:RadioButton ID="RadioButton1" runat="server" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button runat="server" Height="51px" OnClick="Button1_Click" Text="Submit" Width="108px" />
                <asp:Label ID="Label1" runat="server" Text="Submitted Successfully" Visible="False"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
        </tr>
        </table>
    <p>
        &nbsp;</p>
</asp:Content>
