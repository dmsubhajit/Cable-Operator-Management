<%@ Page Title="" Language="VB" MasterPageFile="~/user_home_master.master" AutoEventWireup="false" CodeFile="Customar_Search_channel.aspx.vb" Inherits="Customar_Search_channel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 48px;
        }
        .style7
        {
            height: 37px;
        }
        .style8
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 762px">
    <table class="style3" style="height: 755px">
        <tr>
            <td class="style6" 
                
                style="font-family: 'Arial Black'; font-size: xx-large; font-weight: bold; font-style: italic; color: #CC0066; background-color: #9999FF">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Literal ID="Literal2" runat="server"></asp:Literal>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td bgcolor="#66FF99">
                <asp:Panel ID="Panel2" runat="server" BackColor="#33CCFF" Height="427px" 
                    style="margin-left: 106px" Width="652px">
                    <table class="style3" style="height: 71px; width: 100%">
                        <tr>
                            <td class="style7" 
                                style="font-family: Arial; font-size: x-large; font-weight: bold; background-color: #996600; color: #99FF99;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search Channel Section</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    Text="Channel Name"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                    DataSourceID="SqlDataSource2" DataTextField="cname" DataValueField="cname" 
                                    Height="30px" Width="179px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [cname] FROM [channel]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <br />
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    DataKeyNames="cno" DataSourceID="SqlDataSource1" 
                                    EmptyDataText="There are no data records to display.">
                                    <Columns>
                                        <asp:BoundField DataField="cno" HeaderText="cno" ReadOnly="True" 
                                            SortExpression="cno" />
                                        <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
                                        <asp:BoundField DataField="ctype" HeaderText="ctype" SortExpression="ctype" />
                                        <asp:BoundField DataField="clang" HeaderText="clang" SortExpression="clang" />
                                        <asp:BoundField DataField="ccost" HeaderText="ccost" SortExpression="ccost" />
                                        <asp:ImageField DataImageUrlField="aimg" HeaderText="photo">
                                            <ControlStyle Height="150px" Width="150px" />
                                        </asp:ImageField>
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                    
                                    SelectCommand="SELECT [cno], [cname], [ctype], [clang], [ccost], [aimg] FROM [channel] WHERE ([cname] = @cname)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList2" Name="cname" 
                                            PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

