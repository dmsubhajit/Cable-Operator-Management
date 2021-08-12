<%@ Page Title="" Language="VB" MasterPageFile="~/user_home_master.master" AutoEventWireup="false" CodeFile="Customar_Connection_Facility.aspx.vb" Inherits="Customar_Connection_Facility" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 48px;
        }
        .style9
        {
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 781px">
    <table class="style3" style="height: 784px">
        <tr>
            <td bgcolor="#CCFF99" class="style9" 
                style="font-weight: bold; font-size: x-large; color: #FF6666; font-family: Algerian">
                <asp:Literal ID="Literal2" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td bgcolor="#FFCCFF">
                <asp:Panel ID="Panel2" runat="server" BackColor="#9999FF" Height="460px" 
                    style="margin-left: 47px" Width="828px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="19pt" 
                        Text="Total Disply offer........."></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" 
    AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
    EmptyDataText="There are no data records to display." BackColor="#DEBA84" 
                        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        CellSpacing="2" Height="196px" Width="644px">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="pname" HeaderText="Package Name" 
            SortExpression="pname" />
                            <asp:BoundField DataField="offer" HeaderText="Offer" 
            SortExpression="offer" />
                            <asp:BoundField DataField="offdate" HeaderText="Offer date" 
            SortExpression="offdate" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
    SelectCommand="SELECT [pname], [offer], [offdate] FROM [setoffer]"></asp:SqlDataSource>
                </asp:Panel>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

