<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="Admin_bill_collection.aspx.vb" Inherits="Admin_bill_payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            height: 41px;
        }
        .style9
        {
            height: 35px;
        }
    .style10
    {
        height: 599px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 696px">
    <table class="style1" 
        style="font-family: 'Arial Black'; font-size: larger; font-weight: bold; font-style: italic; color: #008080; background-color: #FFCC66; height: 609px;">
        <tr>
            <td class="style7" style="font-size: xx-large">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Literal 
                    ID="Literal2" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td bgcolor="#9999FF" class="style10">
                <asp:Panel ID="Panel2" runat="server" BackColor="#66FFCC" Height="448px" 
                    style="margin-left: 97px" Width="799px">
                    <table class="style1" style="height: 568px; margin-left: 0px; width: 100%;">
                        <tr>
                            <td align="center" style="font-family: 'Arial Black'; font-size: large; font-weight: bold; font-style: italic; color: #FF3300">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Marchandar :: Belda Cable Oparator Managment<br /> 
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Belda : Purba madinepur<br /> 
                                ...............................................................................................................</td>
                        </tr>
                        <tr>
                            <td style="color: #000000">
                                <asp:Label ID="Label1" runat="server" Text="Customer ID" Font-Size="X-Large" 
                                    Font-Italic="True"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                                    DataSourceID="SqlDataSource1" DataTextField="cid" DataValueField="cid" 
                                    Height="22px" Width="150px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [cid] FROM [customer]"></asp:SqlDataSource>
                                &nbsp;
                                <asp:Label ID="Label11" runat="server" Text="payment id" Font-Size="X-Large"></asp:Label>
&nbsp;
                                <asp:Label ID="Label12" runat="server"></asp:Label>
                                <br />
                                <asp:Label ID="Label9" runat="server" Text="Date and time of payment" 
                                    Font-Size="X-Large"></asp:Label>
                                &nbsp;&nbsp;
                                <asp:Label ID="Label10" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #000000">
                                <asp:Label ID="Label2" runat="server" Text="Customer Name" Font-Size="X-Large"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server" Width="226px" Height="25px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #000000">
                                <asp:Label ID="Label3" runat="server" Text="Customer Address" 
                                    Font-Size="X-Large"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="226px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #000000">
                                <asp:Label ID="Label4" runat="server" Text="Payment Year" Font-Size="X-Large"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="228px" 
                                    AutoPostBack="True">
                                    <asp:ListItem>Select Year</asp:ListItem>
                                    <asp:ListItem>2014</asp:ListItem>
                                    <asp:ListItem>2015</asp:ListItem>
                                    <asp:ListItem>2016</asp:ListItem>
                                    <asp:ListItem>2017</asp:ListItem>
                                    <asp:ListItem>2018</asp:ListItem>
                                    <asp:ListItem>2019</asp:ListItem>
                                    <asp:ListItem>2020</asp:ListItem>
                                    <asp:ListItem>2021</asp:ListItem>
                                    <asp:ListItem>2022</asp:ListItem>
                                    <asp:ListItem>2023</asp:ListItem>
                                    <asp:ListItem>2024</asp:ListItem>
                                    <asp:ListItem>2025</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #000000">
                                <asp:Label ID="Label5" runat="server" Text="Payment Manth" Font-Size="X-Large"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                                    Height="24px" Width="231px">
                                    <asp:ListItem>Select month</asp:ListItem>
                                    <asp:ListItem>Jan</asp:ListItem>
                                    <asp:ListItem>Feb</asp:ListItem>
                                    <asp:ListItem>March</asp:ListItem>
                                    <asp:ListItem>April</asp:ListItem>
                                    <asp:ListItem>May</asp:ListItem>
                                    <asp:ListItem>Jun</asp:ListItem>
                                    <asp:ListItem>July</asp:ListItem>
                                    <asp:ListItem>Aug</asp:ListItem>
                                    <asp:ListItem>Sep</asp:ListItem>
                                    <asp:ListItem>Oct</asp:ListItem>
                                    <asp:ListItem>Nov</asp:ListItem>
                                    <asp:ListItem>Dec</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #000000">
                                <asp:Label ID="Label6" runat="server" Text="Total RS:" Font-Size="X-Large"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                <asp:TextBox ID="TextBox3" runat="server" Width="226px" Height="26px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #000000" bgcolor="#99FFCC">
                                <asp:Label ID="Label7" runat="server" Text="Payabl Agent ID" 
                                    Font-Size="X-Large"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="230px" 
                                    AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="aid" 
                                    DataValueField="aid">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [aid] FROM [Agent]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9" style="color: #000000" bgcolor="#99FFCC">
                                <asp:Label ID="Label8" runat="server" Text="Payabl Agent Name"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:TextBox ID="TextBox4" runat="server" Width="226px" Height="25px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9" bgcolor="#99FFCC" style="color: #000000">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    Text="Submit" Width="105px" BackColor="#FF0066" ForeColor="Lime" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

