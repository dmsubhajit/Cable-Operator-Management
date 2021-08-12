<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="viewchannal.aspx.vb" Inherits="viewchannal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 727px; background-color: #66CCFF;">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="cno" 
        DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." BackColor="#FFEEAA" 
        Font-Bold="True" Font-Italic="True" Font-Size="15pt" Height="160px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="cno" HeaderText="Channel No" ReadOnly="True" 
                SortExpression="cno" />
            <asp:BoundField DataField="cname" HeaderText="Channel Name" 
                SortExpression="cname" />
            <asp:BoundField DataField="ctype" HeaderText="Channel Type" 
                SortExpression="ctype" />
            <asp:BoundField DataField="clang" HeaderText="Channel Language" 
                SortExpression="clang" />
            <asp:BoundField DataField="ccost" HeaderText="Channel Cost" 
                SortExpression="ccost" />
            <asp:ImageField DataImageUrlField="aimg" HeaderText="channel">
                <ControlStyle Height="100px" Width="100px" />
            </asp:ImageField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [channel] WHERE [cno] = @cno" 
        InsertCommand="INSERT INTO [channel] ([cno], [cname], [ctype], [clang], [ccost], [aimg]) VALUES (@cno, @cname, @ctype, @clang, @ccost, @aimg)" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT [cno], [cname], [ctype], [clang], [ccost], [aimg] FROM [channel]" 
        
        UpdateCommand="UPDATE [channel] SET [cname] = @cname, [ctype] = @ctype, [clang] = @clang, [ccost] = @ccost, [aimg] = @aimg WHERE [cno] = @cno">
        <DeleteParameters>
            <asp:Parameter Name="cno" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cno" Type="String" />
            <asp:Parameter Name="cname" Type="String" />
            <asp:Parameter Name="ctype" Type="String" />
            <asp:Parameter Name="clang" Type="String" />
            <asp:Parameter Name="ccost" Type="Decimal" />
            <asp:Parameter Name="aimg" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="cname" Type="String" />
            <asp:Parameter Name="ctype" Type="String" />
            <asp:Parameter Name="clang" Type="String" />
            <asp:Parameter Name="ccost" Type="Decimal" />
            <asp:Parameter Name="aimg" Type="String" />
            <asp:Parameter Name="cno" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>

