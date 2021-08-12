<%@ Page Title="" Language="VB" MasterPageFile="~/user_home_master.master" AutoEventWireup="false" CodeFile="Customer_Bill_Payment_online.aspx.vb" Inherits="Admin_Bill_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 37px;
        }
        .style7
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 879px; background-image: url('pic2/231745417.jpg');">
    <table class="style3" style="height: 718px">
        <tr>
            <td bgcolor="Silver" class="style6" 
                
                
                style="font-family: 'Baskerville Old Face'; font-size: xx-large; font-weight: bold; font-style: italic; color: #0066FF">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Literal ID="Literal2" runat="server"></asp:Literal>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td bgcolor="#FFCC66" 
                
                style="background-image: none; background-color: #FFCCFF;">
                <asp:Panel ID="Panel2" runat="server" BackColor="#CCFFFF" Height="799px" 
                    style="margin-left: 52px" Width="795px">
                    <table class="style3" 
                        style="background-image: none; background-color: #FFFFFF;">
                        <tr>
                            <td bgcolor="White" style="color: #666633; font-size: large;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Customer Bill Payment Via 
                                Online&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="font-size: x-large; font-weight: bold;" bgcolor="White">
                                &nbsp;Customer ID&nbsp; &nbsp;<asp:Label ID="Label14" runat="server" Font-Bold="True" 
                                    Font-Size="15pt"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date:<asp:Label ID="Label11" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: x-large; font-weight: bold; background-image: none;" 
                                bgcolor="White">
                                Customer Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="15pt"></asp:Label>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="White" 
                                style="font-size: x-large; font-weight: bold; background-image: none;">
                                Customer address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label10" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: x-large; font-weight: bold" bgcolor="White">
                                Contact Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label13" runat="server" Font-Bold="True" 
                                    Font-Size="15pt"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="White" style="font-size: x-large; font-weight: bold">
                                Email id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="15pt"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="White" style="font-size: x-large; font-weight: bold">
                                <asp:Label ID="Label7" runat="server" Text="Payment Year"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox9" runat="server" Height="30px" Width="263px" 
                                    BackColor="#FFFFCC"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="19pt" 
                                    Text="Select payment month"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                <asp:TextBox ID="TextBox11" runat="server" BackColor="#FFFFCC"></asp:TextBox>
                                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="19pt" 
                                    Text="To"></asp:Label>
                                <asp:TextBox ID="TextBox12" runat="server" BackColor="#FFFFCC"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7" style="font-size: x-large; font-weight: bold" 
                                bgcolor="White">
                                Total Due&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:TextBox ID="TextBox4" runat="server" Width="261px" Height="27px" 
                                    BackColor="#FFFFCC"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: x-large; font-weight: bold" bgcolor="White">
                                Payment&nbsp; Mode&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox10" runat="server" 
                                    Height="33px" Width="262px" BackColor="#FFFFCC"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style7" style="font-size: x-large; font-weight: bold" 
                                bgcolor="White">
                                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Select Bank&nbsp;&nbsp;"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="265px" 
                                    AutoPostBack="True" BackColor="#FFFFCC">
                                    <asp:ListItem>Select Bank</asp:ListItem>
                                    <asp:ListItem>State Bank Of India</asp:ListItem>
                                    <asp:ListItem>HDFC Bank</asp:ListItem>
                                    <asp:ListItem>ICICI Bank</asp:ListItem>
                                    <asp:ListItem>Panjab National Bank</asp:ListItem>
                                    <asp:ListItem>Axis Bank</asp:ListItem>
                                    <asp:ListItem>United bank of india</asp:ListItem>
                                    <asp:ListItem>Indian bank</asp:ListItem>
                                    <asp:ListItem>Union Bank</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: x-large; font-weight: bold" bgcolor="White">
                                <asp:Label ID="Label4" runat="server" Text="Account/Card Numbe"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox5" runat="server" Width="284px" Height="28px" 
                                    BackColor="#FFFFCC"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="White" style="font-size: x-large; font-weight: bold">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label6" runat="server" Text="Card Holder Name"></asp:Label>
                                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox8" runat="server" Width="279px" BackColor="#FFFFCC"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: x-large; font-weight: bold" bgcolor="White">
                                &nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Enter Card Expiry Date"></asp:Label>
                                &nbsp; &nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox7" runat="server" 
                                    Height="25px" Width="273px" 
                                    BackColor="#FFFFCC"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="font-size: x-large; font-weight: bold; background-color: #FFFFFF;" 
                                bgcolor="White">
                                Enter PIN Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:TextBox ID="TextBox6" runat="server" Width="268px" Height="26px" 
                                    BackColor="#FFFFCC"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Payment &nbsp;&nbsp;id:&nbsp;&nbsp;<asp:Label ID="Label16" 
                                    runat="server"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> 
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" BackColor="#0066FF" Font-Size="X-Large" 
                                    ForeColor="#FFFF99" Text="Paid" Width="147px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

