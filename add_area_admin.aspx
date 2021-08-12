<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="add_area_admin.aspx.vb" Inherits="add_area_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style7
        {
            width: 129%;
            height: 725px;
        }
        .style8
        {
            height: 55px;
            width: 725px;
        }
        .style9
        {
            height: 598px;
            width: 725px;
        }
        .style10
        {
            width: 99%;
            height: 521px;
        }
    .style11
    {
        height: 30px;
    }
    .style12
    {
        height: 214px;
    }
        .style13
        {
            height: 3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 734px; width: 990px;">
<div style="height: 658px; margin-right: 222px;">
    <table class="style7">
        <tr>
            <td class="style8" 
                
                style="background-color: #CCFF66; font-size: xx-large; font-weight: bold; color: #0000FF; font-family: 'Arial Black';" 
                bgcolor="#66FF66">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Literal ID="Literal2" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td class="style9" style="background-color: #FF99FF">
                <asp:Panel ID="Panel3" runat="server" BackColor="#99CCFF" Height="425px" 
                    style="margin-left: 80px; margin-top: 0px" Width="807px">
                    <table class="style10">
                        <tr>
                            <td style="background-color: #FF9900; font-weight: bold; font-size: large;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add Area 
                                Section&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label2" runat="server" Text="   Area Id" Font-Size="X-Large"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" Width="216px"></asp:TextBox>
                                &nbsp;&nbsp;
                                <asp:TextBox ID="TextBox3" runat="server" Visible="False" Width="54px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text=" Area Name" 
                                    Font-Size="X-Large"></asp:Label>
                                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="anametxt" runat="server" Width="220px" Height="30px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style13">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" 
                                    Text="Area Pin code" Font-Size="X-Large"></asp:Label>
                                &nbsp;&nbsp;&nbsp; <asp:TextBox ID="apintxt" runat="server" Width="220px" 
                                    Height="30px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton8" runat="server" BackColor="Yellow" 
                                    BorderColor="#FFCCCC" BorderStyle="Dotted" Font-Bold="True" Font-Size="20pt">Add</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                <asp:Label ID="Label5" runat="server" Font-Size="X-Large" 
                                    Text="Previous added area"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="aid" 
                                    DataSourceID="SqlDataSource1" 
                                    EmptyDataText="There are no data records to display." Width="688px" 
                                    BackColor="#FFCC99">
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                            ShowSelectButton="True" />
                                        <asp:BoundField DataField="aid" HeaderText="Area ID" ReadOnly="True" 
                                            SortExpression="aid" />
                                        <asp:BoundField DataField="areaname" HeaderText="AreaName" 
                                            SortExpression="areaname" />
                                        <asp:BoundField DataField="apincode" HeaderText="Area Pincode" 
                                            SortExpression="apincode" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    DeleteCommand="DELETE FROM [Area] WHERE [aid] = @aid" 
                                    InsertCommand="INSERT INTO [Area] ([aid], [areaname], [apincode]) VALUES (@aid, @areaname, @apincode)" 
                                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                    SelectCommand="SELECT [aid], [areaname], [apincode] FROM [Area]" 
                                    UpdateCommand="UPDATE [Area] SET [areaname] = @areaname, [apincode] = @apincode WHERE [aid] = @aid">
                                    <DeleteParameters>
                                        <asp:Parameter Name="aid" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="aid" Type="String" />
                                        <asp:Parameter Name="areaname" Type="String" />
                                        <asp:Parameter Name="apincode" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="areaname" Type="String" />
                                        <asp:Parameter Name="apincode" Type="String" />
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
</div>
</asp:Content>

