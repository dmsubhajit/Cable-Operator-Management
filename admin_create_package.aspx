<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="admin_create_package.aspx.vb" Inherits="admin_create_package" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
        height: 46px;
    }
    .style9
    {
        }
        .style10
        {
            width: 433px;
            height: 23px;
        }
        .style11
        {
            height: 23px;
        }
        .style12
        {
            height: 36px;
        }
        .style13
        {}
        .style14
        {
            width: 433px;
        }
        .style15
        {
            height: 36px;
            width: 433px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 788px; background-color: #669900;">
    <table class="style1" style="height: 758px">
        <tr>
            <td class="style7" 
                
                style="font-weight: bolder; font-size: xx-large; background-color: #FFFF00;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                    ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Literal 
                    ID="Literal2" runat="server"></asp:Literal>
                &nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Panel ID="Panel2" 
                    runat="server" Height="717px">
                    <table class="style1" style="height: 325px">
                        <tr>
                            <td class="style10" 
                                style="background-color: #FFCCFF; font-weight: bold; font-size: x-large; color: #0000FF;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Setup Box&nbsp;</td>
                            <td style="background-color: #99CCFF; font-size: x-large; font-weight: bold; color: #0000CC;" 
                                bgcolor="#9999FF" class="style11">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cable Connecton</td>
                        </tr>
                        <tr>
                            <td style="background-color: #FFCCFF; font-weight: bold; font-size: x-large;" 
                                class="style14">
                                Package Name&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="268px" 
                                    Height="27px"></asp:TextBox>
                            </td>
                            <td style="background-color: #99CCFF; font-size: x-large;" bgcolor="#9999FF" 
                                rowspan="2">
                                &nbsp; Select Channel&nbsp;
                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                    DataSourceID="SqlDataSource2" DataTextField="cname" DataValueField="cname" 
                                    Height="31px" Width="278px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #FFCCFF; font-weight: bold; font-size: x-large;" 
                                class="style14">
                                Select Channel&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" 
                                    Height="28px" Width="251px" 
                                    DataSourceID="SqlDataSource2" DataTextField="cname" DataValueField="cname" 
                                    AutoPostBack="True">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [cname] FROM [channel]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #FFCCFF; font-weight: bold; font-size: x-large;" 
                                class="style14">
                                Total Cost&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" Width="267px" Height="27px"></asp:TextBox>
                            </td>
                            <td style="background-color: #99CCFF; font-size: x-large;" bgcolor="#9999FF">
                                &nbsp;&nbsp; Total Cost&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox5" runat="server" Width="279px" Height="30px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #FFCCFF" class="style14">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" BackColor="#009900" 
                                    Font-Bold="True" Text="Create Package" Width="127px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" BackColor="#CCCC00" Height="31px" 
                                    Text="ADD" Width="91px" Font-Bold="True" Font-Size="Large" />
                            </td>
                            <td style="background-color: #99CCFF" bgcolor="#9999FF">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" BackColor="#CCCC00" Height="31px" 
                                    Text="ADD" Width="91px" Font-Bold="True" Font-Size="Large" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style15" style="background-color: #FFCCFF">
                                <asp:GridView ID="GridView1" runat="server" BackColor="#339966" Width="408px">
                                </asp:GridView>
                                <br />
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                            <td bgcolor="#9999FF" style="background-color: #99CCFF" class="style12">
                                <asp:GridView ID="GridView2" runat="server" BackColor="#9966FF" Width="399px">
                                </asp:GridView>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style9" colspan="2" style="background-color: #FFCCFF">
                                <asp:Panel ID="Panel3" runat="server" BackColor="#00CCFF" Height="271px">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    Pckage List
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label1" runat="server" Text="Setupbox" Visible="False"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label3" runat="server" Text="cable connection package" 
                                        Visible="False"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <table class="style1" style="height: 182px">
                                        <tr>
                                            <td class="style13">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:GridView ID="GridView3" runat="server" AllowSorting="True" 
                                                    BackColor="#99FF33" ClientIDMode="AutoID" 
                                                    EnableSortingAndPagingCallbacks="True" ViewStateMode="Enabled" Width="627px">
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9" colspan="2" style="background-color: #FFCCFF">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</div>
</asp:Content>

