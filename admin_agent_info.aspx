<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="admin_agent_info.aspx.vb" Inherits="admin_agent_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
        height: 43px;
    }
    .style8
    {
        height: 73px;
        width: 1234px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 722px">
    <table class="style1" style="height: 725px">
        <tr>
            <td bgcolor="#99CCFF" class="style8" 
                
                
                
                style="font-family: 'Arial Black'; font-weight: bold; font-style: italic; color: #336600; font-size: x-large">
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Literal ID="Literal2" runat="server"></asp:Literal>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#FFFF99">
                <asp:Panel ID="Panel2" runat="server" BackColor="#9999FF" Height="456px" 
                    style="margin-left: 90px" Width="811px">
                    <table class="style1" style="height: 456px; width: 100%">
                        <tr>
                            <td class="style7" 
                                
                                style="font-family: Arial; font-size: large; font-weight: bold; color: #CC0066" 
                                bgcolor="#00FFCC">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Agent Information Section</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    Text="Agent ID"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="196px" 
                                    AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="aid" 
                                    DataValueField="aid" style="margin-left: 0px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [aid] FROM [Agent]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    DataKeyNames="aid" DataSourceID="SqlDataSource2" 
                                    EmptyDataText="There are no data records to display." BackColor="#99FFCC" 
                                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                                    CellSpacing="2" ForeColor="Black">
                                    <Columns>
                                        <asp:CommandField HeaderText="Select what ?" ShowDeleteButton="True" 
                                            ShowEditButton="True" ShowSelectButton="True" />
                                        <asp:BoundField DataField="aid" HeaderText="Agent ID" ReadOnly="True" 
                                            SortExpression="aid" />
                                        <asp:BoundField DataField="aname" HeaderText="Agent Name" 
                                            SortExpression="aname" />
                                        <asp:BoundField DataField="aadds" HeaderText="Agent Address" 
                                            SortExpression="aadds" />
                                        <asp:BoundField DataField="aarea" HeaderText="Agent Area" 
                                            SortExpression="aarea" />
                                        <asp:ImageField DataImageUrlField="aimg" HeaderText="photo">
                                            <ControlStyle Height="80px" Width="80px" />
                                        </asp:ImageField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                    <RowStyle BackColor="White" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    DeleteCommand="DELETE FROM [Agent] WHERE [aid] = @aid" 
                                    InsertCommand="INSERT INTO [Agent] ([aid], [aname], [aadds], [aarea], [aimg]) VALUES (@aid, @aname, @aadds, @aarea, @aimg)" 
                                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                    SelectCommand="SELECT [aid], [aname], [aadds], [aarea], [aimg] FROM [Agent] WHERE ([aid] = @aid)" 
                                    UpdateCommand="UPDATE [Agent] SET [aname] = @aname, [aadds] = @aadds, [aarea] = @aarea, [aimg] = @aimg WHERE [aid] = @aid">
                                    <DeleteParameters>
                                        <asp:Parameter Name="aid" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="aid" Type="String" />
                                        <asp:Parameter Name="aname" Type="String" />
                                        <asp:Parameter Name="aadds" Type="String" />
                                        <asp:Parameter Name="aarea" Type="String" />
                                        <asp:Parameter Name="aimg" Type="String" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="aid" 
                                            PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="aname" Type="String" />
                                        <asp:Parameter Name="aadds" Type="String" />
                                        <asp:Parameter Name="aarea" Type="String" />
                                        <asp:Parameter Name="aimg" Type="String" />
                                        <asp:Parameter Name="aid" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</div>
</asp:Content>

