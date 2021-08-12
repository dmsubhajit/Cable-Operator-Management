<%@ Page Title="" Language="VB" MasterPageFile="~/user_home_master.master" AutoEventWireup="false" CodeFile="Castomar_complan.aspx.vb" Inherits="Castomar_complan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 38px;
        }
        .style17
        {
            height: 33px;
            width: 631px;
        }
        .style18
        {
            width: 631px;
            height: 11px;
        }
        .style20
        {
            width: 631px;
            height: 10px;
        }
        .style21
        {
            height: 15px;
            width: 631px;
        }
        .style24
        {
            width: 631px;
            height: 21px;
        }
        .style25
        {
            width: 631px;
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 762px">
    <table class="style3" 
        
            style="height: 758px; background-image: url('pic/bl27_cayan_digi_BL_1334553f.jpg');">
        <tr>
            <td class="style6" 
                style="font-family: Arial; font-size: xx-large; font-weight: bold; font-style: italic; color: #00FFFF; background-color: #336600;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Literal ID="Literal2" runat="server"></asp:Literal>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td bgcolor="#CCFF99">
                <asp:Panel ID="Panel2" runat="server" BackColor="#66FFFF" Height="542px" 
                    style="margin-left: 91px; margin-bottom: 0px" Width="753px">
                    <table class="style3" style="height: 535px; width: 100%; margin-right: 0px">
                        <tr>
                            <td class="style24" 
                                style="background-color: #FFFFCC; font-weight: bold; font-size: large; color: #FF0066;">
                                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; Castomar Complain Section</td>
                        </tr>
                        <tr>
                            <td class="style25">
                                <br />
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    Text="Customer_ID"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" Width="176px" ReadOnly="True" 
                                    Height="30px"></asp:TextBox>
                                <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <br />
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    Text="Complain_ID"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox3" runat="server" Width="176px" ReadOnly="True" 
                                    Height="30px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style18">
                                <br />
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    Text="Complain_Status"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox4" runat="server" Width="175px" Height="31px"></asp:TextBox>
                                &nbsp;&nbsp;
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    Text="Date:"></asp:Label>
                                &nbsp;&nbsp;
                                <asp:TextBox ID="TextBox5" runat="server" Width="146px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Text="calender" />
                                <asp:Calendar ID="Calendar1" runat="server" Visible="False"></asp:Calendar>
                            </td>
                        </tr>
                        <tr>
                            <td class="style17">
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    Text="Complain_Detials"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style21">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    Text="Submit" BackColor="#CC99FF" ForeColor="#0000CC" Width="130px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style17">
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="19pt" 
                                    Text="Your Previous complain are.........."></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style17">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" DataKeyNames="comid" DataSourceID="SqlDataSource1" 
                                    EmptyDataText="There are no data records to display.">
                                    <Columns>
                                        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                                        <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
                                        <asp:BoundField DataField="comid" HeaderText="comid" ReadOnly="True" 
                                            SortExpression="comid" />
                                        <asp:BoundField DataField="comst" HeaderText="comst" SortExpression="comst" />
                                        <asp:BoundField DataField="comdtls" HeaderText="comdtls" 
                                            SortExpression="comdtls" />
                                        <asp:BoundField DataField="comdate" HeaderText="comdate" 
                                            SortExpression="comdate" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    DeleteCommand="DELETE FROM [complain] WHERE [comid] = @comid" 
                                    InsertCommand="INSERT INTO [complain] ([cid], [comid], [comst], [comdtls], [comdate]) VALUES (@cid, @comid, @comst, @comdtls, @comdate)" 
                                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                    SelectCommand="SELECT [cid], [comid], [comst], [comdtls], [comdate] FROM [complain] WHERE ([cid] = @cid)" 
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
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="TextBox2" Name="cid" PropertyName="Text" 
                                            Type="String" />
                                    </SelectParameters>
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
    </div>
</asp:Content>

