<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="Admincomplain.aspx.vb" Inherits="Admincomplain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
    {
        width: 100%;
        height: 721px;
    }
    .style8
    {
        height: 60px;
    }
        .style9
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 723px">
    <asp:Panel ID="Panel2" runat="server" Height="727px">
        <table class="style7">
            <tr>
                <td class="style8" 
                    style="background-color: #00FFFF; font-family: Algerian; font-size: xx-large; font-weight: bold; font-style: italic; color: #FF0066;">
                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td bgcolor="#9999FF">
                    <asp:Panel ID="Panel3" runat="server" BackColor="#CCFFFF" Height="432px" 
                        style="margin-left: 31px" Width="925px">
                        <table class="style9">
                            <tr>
                                <td style="font-size: 30px; font-weight: bold; color: #00CC00;">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Customer complain zone:</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        BackColor="#FFCCFF" DataKeyNames="comid" DataSourceID="SqlDataSource1" 
                                        EmptyDataText="There are no data records to display." Font-Size="Larger" 
                                        Width="667px">
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" />
                                            <asp:BoundField DataField="cid" HeaderText="Customer ID" SortExpression="cid" />
                                            <asp:BoundField DataField="comid" HeaderText="Complain ID" ReadOnly="True" 
                                                SortExpression="comid" />
                                            <asp:BoundField DataField="comst" HeaderText="complain  status" 
                                                SortExpression="comst" />
                                            <asp:BoundField DataField="comdtls" HeaderText="complain details" 
                                                SortExpression="comdtls" />
                                            <asp:BoundField DataField="comdate" HeaderText="Complain Date" 
                                                SortExpression="comdate" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        DeleteCommand="DELETE FROM [complain] WHERE [comid] = @comid" 
                                        InsertCommand="INSERT INTO [complain] ([cid], [comid], [comst], [comdtls], [comdate]) VALUES (@cid, @comid, @comst, @comdtls, @comdate)" 
                                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                        SelectCommand="SELECT [cid], [comid], [comst], [comdtls], [comdate] FROM [complain]" 
                                        UpdateCommand="UPDATE [complain] SET [cid] = @cid, [comst] = @comst, [comdtls] = @comdtls, [comdate] = @comdate WHERE [comid] = @comid">
                                        <DeleteParameters>
                                            <asp:Parameter Name="comid" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="cid" Type="String" />
                                            <asp:Parameter Name="comid" Type="String" />
                                            <asp:Parameter Name="comst" Type="String" />
                                            <asp:Parameter Name="comdtls" Type="String" />
                                            <asp:Parameter Name="comdate" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="cid" Type="String" />
                                            <asp:Parameter Name="comst" Type="String" />
                                            <asp:Parameter Name="comdtls" Type="String" />
                                            <asp:Parameter Name="comdate" Type="String" />
                                            <asp:Parameter Name="comid" Type="String" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
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

