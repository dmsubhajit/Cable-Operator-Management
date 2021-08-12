<%@ Page Title="" Language="VB" MasterPageFile="~/user_home_master.master" AutoEventWireup="false" CodeFile="Customer_acount_Details.aspx.vb" Inherits="Customer_acount_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 51px;
        }
        .style7
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 750px">
    <table class="style3" 
        style="height: 661px; background-image: url('pic/fiber-optic-cable.jpg'); background-repeat: no-repeat;">
        <tr>
            <td class="style6" 
                style="font-family: 'Arial Black'; font-size: xx-large; font-weight: bold; font-style: italic; color: #33CCFF; background-color: #6600CC">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Literal ID="Literal2" runat="server"></asp:Literal>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel2" runat="server" BackColor="#CCFF66" Height="407px" 
                    style="margin-left: 119px" Width="683px">
                    <table class="style3" style="width: 99%; height: 149px">
                        <tr>
                            <td bgcolor="#CC99FF" 
                                style="font-family: Arial; font-size: large; color: #0066FF; font-weight: bold;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Acount details Section</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    Text="Hi "></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="170px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label2" runat="server" Text=" You are login " 
                                    Font-Size="X-Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" DataKeyNames="cid" DataSourceID="SqlDataSource1" 
                                    EmptyDataText="There are no data records to display." BackColor="#99CCFF">
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                            ShowSelectButton="True" HeaderText="Select" />
                                        <asp:BoundField DataField="cid" HeaderText="Customer ID" ReadOnly="True" 
                                            SortExpression="cid" />
                                        <asp:BoundField DataField="cname" HeaderText="Customer Name" 
                                            SortExpression="cname" />
                                        <asp:BoundField DataField="cadd" HeaderText="Customer Address" 
                                            SortExpression="cadd" />
                                        <asp:ImageField DataImageUrlField="cimg" HeaderText="Image">
                                            <ControlStyle Height="150px" Width="150px" />
                                        </asp:ImageField>
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    DeleteCommand="DELETE FROM [customer] WHERE [cid] = @cid" 
                                    InsertCommand="INSERT INTO [customer] ([cid], [cname], [cadd], [cimg]) VALUES (@cid, @cname, @cadd, @cimg)" 
                                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                    SelectCommand="SELECT [cid], [cname], [cadd], [cimg] FROM [customer] WHERE ([cname] = @cname)" 
                                    UpdateCommand="UPDATE [customer] SET [cname] = @cname, [cadd] = @cadd, [cimg] = @cimg WHERE [cid] = @cid">
                                    <DeleteParameters>
                                        <asp:Parameter Name="cid" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="cid" Type="String" />
                                        <asp:Parameter Name="cname" Type="String" />
                                        <asp:Parameter Name="cadd" Type="String" />
                                        <asp:Parameter Name="cimg" Type="String" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="TextBox2" Name="cname" PropertyName="Text" 
                                            Type="String" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="cname" Type="String" />
                                        <asp:Parameter Name="cadd" Type="String" />
                                        <asp:Parameter Name="cimg" Type="String" />
                                        <asp:Parameter Name="cid" Type="String" />
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

