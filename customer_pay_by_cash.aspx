<%@ Page Title="" Language="VB" MasterPageFile="~/user_home_master.master" AutoEventWireup="false" CodeFile="customer_pay_by_cash.aspx.vb" Inherits="customer_pay_by_cash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
            height: 826px;
        }
        .style7
        {
            height: 45px;
        }
        .style8
        {
            width: 100%;
        }
        .style9
        {
            height: 49px;
        }
        .style10
        {
            height: 76px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height: 838px">
    <asp:Panel ID="Panel2" runat="server" Height="668px">
        <table class="style6">
            <tr>
                <td bgcolor="#9966FF" class="style7" 
                    style="color: #CCFF66; font-family: Algerian; font-size: xx-large">
                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td bgcolor="#00FF99">
                    <asp:Panel ID="Panel3" runat="server" BackColor="#FFCCFF" Height="720px" 
                        style="margin-left: 40px" Width="842px">
                        <table class="style8">
                            <tr>
                                <td class="style10" style="font-size: xx-large">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                        Text="Customer ID :"></asp:Label>
                                    <asp:Label ID="Label7" runat="server"></asp:Label>
                                    &nbsp; Payment id:
                                    <asp:Label ID="Label14" runat="server"></asp:Label>
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date and Time<asp:Label ID="Label15" runat="server"></asp:Label>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                        Text="Customer Name :"></asp:Label>
                                    <asp:Label ID="Label8" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                        Text="Customer Address :"></asp:Label>
                                    <asp:Label ID="Label9" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                        Text="Phone no. :"></asp:Label>
                                    <asp:Label ID="Label12" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td style="font-size: x-large; font-weight: bold;">
                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                        Text="Email ID :"></asp:Label>
                                    <asp:Label ID="Label13" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                    Total Rs:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox2" runat="server" Width="183px"></asp:TextBox>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                        Text="Area Code :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                        DataSourceID="SqlDataSource1" DataTextField="aarea" DataValueField="aarea" 
                                        Height="26px" Width="194px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT DISTINCT [aarea] FROM [Agent]"></asp:SqlDataSource>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                        Text="Agent Name :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList2" runat="server" 
                                        DataSourceID="SqlDataSource2" DataTextField="aname" DataValueField="aname" 
                                        Height="26px" Width="195px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT [aname] FROM [Agent] WHERE ([aarea] = @aarea)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="aarea" 
                                                PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td style="font-size: x-large">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                        Text="Agent ID :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList3" runat="server" 
                                        DataSourceID="SqlDataSource3" DataTextField="aid" DataValueField="aid" 
                                        Height="26px" Width="196px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT DISTINCT [aid] FROM [Agent] WHERE ([aname] = @aname)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList2" Name="aname" 
                                                PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;<br /> 
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" BackColor="#66FF33" Font-Bold="True" 
                                        Font-Size="X-Large" ForeColor="Blue" Text="Apply" Height="49px" 
                                        Width="158px" />
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </asp:Panel>
</div>
</asp:Content>

