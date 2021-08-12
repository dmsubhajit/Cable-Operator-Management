<%@ Page Title="" Language="VB" MasterPageFile="~/user_home_master.master" AutoEventWireup="false" CodeFile="New_castomar_Ragister.aspx.vb" Inherits="New_castomar_Ragister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 51px;
        }
        .style10
        {
    }
        .style11
        {
            height: 41px;
        }
        .style12
        {
            height: 39px;
        }
        .style13
        {
            height: 48px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 718px; width: 933px;">
    <table class="style3" style="height: 722px">
        <tr>
            <td class="style6" 
                
                
                
                style="font-family: Gadugi; font-size: xx-large; font-weight: bold; font-style: italic; color: #FF99CC; background-color: #9999FF">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Literal 
                    ID="Literal2" runat="server"></asp:Literal>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td bgcolor="#FFCCFF" style="background-image: url('pic2/304248_thumb.jpg')">
                <asp:Panel ID="Panel4" runat="server" BackColor="#CCFFCC" Height="543px" 
                    style="margin-left: 106px" Width="678px">
                    <table class="style3" style="height: 44px; width: 100%">
                        <tr>
                            <td bgcolor="#CCFFCC" class="style11">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" 
                                    Font-Size="X-Large" Text="Connection ID"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                                    ID="TextBox6" runat="server" ReadOnly="True" 
                                    Height="29px" Width="240px"></asp:TextBox>
                                &nbsp;&nbsp;
                                <asp:TextBox ID="TextBox7" runat="server" Visible="False" Height="28px" 
                                    Width="84px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#CCFFCC" class="style12">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    Text="Customer Name"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server" Width="234px" Height="29px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#CCFFCC" class="style11">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    Text="Customer Address"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="236px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#CCFFCC" class="style11">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    Text="Customer password"></asp:Label>
                                &nbsp;&nbsp;
                                <asp:TextBox ID="TextBox3" runat="server" Width="233px" Height="29px" 
                                    TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#CCFFCC" class="style13">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    Text="Confarm Password"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox4" runat="server" Width="237px" Height="29px" 
                                    TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#CCFFCC" class="style13">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    Text="Contact no"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox8" runat="server" Height="29px" Width="248px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#CCFFCC" class="style13">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    Text="Email id"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox9" runat="server" Height="29px" Width="252px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#CCFFCC">
                                &nbsp;&nbsp;<br /> &nbsp; &nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Customer image" 
                                    Font-Size="X-Large"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:FileUpload ID="upload" runat="server" Height="31px" Width="219px" />
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#CCFFCC" class="style10">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        </tr>
                        <tr>
                            <td bgcolor="#CCFFCC" class="style10" style="background-color: #CCFFCC">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" BackColor="#3333FF" Font-Bold="True" 
                                    Font-Size="X-Large" ForeColor="#99FF66" Height="52px" Text="Register" 
                                    Width="127px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

