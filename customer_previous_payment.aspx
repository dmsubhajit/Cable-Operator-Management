<%@ Page Title="" Language="VB" MasterPageFile="~/user_home_master.master" AutoEventWireup="false" CodeFile="customer_previous_payment.aspx.vb" Inherits="customer_previous_payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
            height: 760px;
        }
        .style7
        {
            height: 59px;
        }
        .style8
        {
            width: 100%;
            height: 621px;
        }
        .style10
        {
            height: 53px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 764px">

        <table class="style6">
            <tr>
                <td bgcolor="#3366FF" class="style7" 
                    style="color: #00FFFF; font-size: x-large; font-weight: bolder">
                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td bgcolor="#99FF66">
                    <asp:Panel ID="Panel2" runat="server" BackColor="#FFCCCC" Height="624px" 
                        style="margin-left: 21px" Width="883px">
                        <table class="style8">
                            <tr>
                                <td class="style10" style="font-size: x-large; font-weight: bold;">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hi
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    &nbsp; Your&nbsp; Bill&nbsp; Payment&nbsp; Details</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Panel ID="Panel3" runat="server" Height="517px">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" 
                                            Font-Size="15pt" Height="25px" Width="235px" AutoPostBack="True">
                                            <asp:ListItem>Select Payment Mode</asp:ListItem>
                                            <asp:ListItem>Online Payment</asp:ListItem>
                                            <asp:ListItem>Cash Payment</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        <asp:GridView ID="GridView1" runat="server" Width="638px" 
                                            AutoGenerateColumns="False" BackColor="#CCFFCC" Visible="False">
                                            <Columns>
                                                <asp:BoundField DataField="cid" HeaderText="Customer ID" />
                                                <asp:BoundField DataField="lastpay" HeaderText="Last Payment" />
                                                <asp:BoundField DataField="spaymanth" HeaderText="Start Pyment Month" />
                                                <asp:BoundField DataField="epaymanth" HeaderText="End Payment Month" />
                                                <asp:BoundField DataField="due" HeaderText="Total Payment" />
                                                <asp:BoundField DataField="paymodule" HeaderText="Payment Modul" />
                                                <asp:BoundField DataField="sbank" HeaderText="Bank Name" />
                                                <asp:BoundField DataField="cardno" HeaderText="Card No" />
                                                <asp:BoundField DataField="holdar" HeaderText="Holder Name" />
                                                <asp:BoundField DataField="datetime" HeaderText="Date &amp; Time" />
                                                <asp:BoundField DataField="payid" HeaderText="Payment ID" />
                                            </Columns>
                                        </asp:GridView>
                                        <br />
                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                            BackColor="#CCFFCC" Visible="False" Width="827px">
                                            <Columns>
                                                <asp:BoundField DataField="cid" HeaderText="Customer ID" />
                                                <asp:BoundField DataField="acode" HeaderText="Area Code" />
                                                <asp:BoundField DataField="aid" HeaderText="Agent ID" />
                                                <asp:BoundField DataField="aname" HeaderText="Agent Name" />
                                                <asp:BoundField DataField="pno" HeaderText="Phone No" />
                                                <asp:BoundField DataField="mail" HeaderText="Email ID" />
                                                <asp:BoundField DataField="payid" HeaderText="Payment ID" />
                                                <asp:BoundField DataField="rs" HeaderText="Total" />
                                            </Columns>
                                        </asp:GridView>
                                    </asp:Panel>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        <br />

</div>
</asp:Content>

