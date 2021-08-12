<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="Customer_details_admin_page.aspx.vb" Inherits="Customer_details_admin_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
    {
        width: 860px;
        height: 360px;
            margin-right: 0px;
        }
    .style8
    {
        height: 39px;
    }
    .style9
    {
        height: 54px;
            width: 343px;
        }
        .style11
        {
            width: 719px;
        }
        .style12
        {
            width: 343px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 708px; background-image: none;">
        <div style="height: 717px">
            <table class="style7" 
        style="color: #FFCC66; height: 711px; background-image: none; width: 996px;">
                <tr>
                    <td class="style8" 
                style="font-family: 'Arial Black'; font-size: xx-large; font-weight: bold; font-style: italic; color: #99FF66; background-color: #0000FF">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Literal ID="Literal2" runat="server"></asp:Literal>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#99CCFF">
                        <asp:Panel ID="Panel2" runat="server" BackColor="#FFCCFF" Height="421px" 
                    style="margin-left: 133px" Width="644px">
                            <table class="style7">
                                <tr>
                                    <td class="style9">
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    ForeColor="Black" Text="Enter Customer_ID"></asp:Label>
                                &nbsp;&nbsp;
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    DataSourceID="SqlDataSource1" DataTextField="cid" DataValueField="cid" 
                                    Height="21px" Width="150px">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [cid] FROM [customer]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <%--<td class="style12">
                                        <br />
                                        <br />
                                <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
                                    </td>--%>
                                </tr>
                                <tr>
                                    <td style="color: #000000" class="style12">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    DataKeyNames="cid" DataSourceID="SqlDataSource2" 
                                    EmptyDataText="There are no data records to display." Height="183px" Width="639px" 
                                            BackColor="#FFFFCC">
                                            <Columns>
                                                <asp:CommandField ShowSelectButton="True" />
                                                <asp:BoundField DataField="cid" HeaderText="Customer ID" ReadOnly="True" 
                                            SortExpression="cid" />
                                                <asp:BoundField DataField="cname" HeaderText="Customer Name" 
                                                    SortExpression="cname" />
                                                <asp:BoundField DataField="cadd" HeaderText="Customer Address" 
                                                    SortExpression="cadd" />
                                                <asp:ImageField DataImageUrlField="cimg" HeaderText="photo">
                                                    <ControlStyle Height="120px" Width="120px" />
                                                </asp:ImageField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                    SelectCommand="SELECT DISTINCT [cid], [cname], [cadd], [cpass], [cimg] FROM [customer] WHERE ([cid] = @cid)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" Name="cid" 
                                            PropertyName="SelectedValue" Type="String" />
                                            </SelectParameters>
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

