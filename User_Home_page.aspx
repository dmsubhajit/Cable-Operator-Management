<%@ Page Title="" Language="VB" MasterPageFile="~/user_home_master.master" AutoEventWireup="false" CodeFile="User_Home_page.aspx.vb" Inherits="User_Home_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        height: 704px;
    }
    .style7
    {
        height: 704px;
        width: 677px;
    }
        .style8
        {
            width: 100%;
        }
        .style9
        {
            width: 196px;
            height: 170px;
        }
        .style10
        {
            width: 191px;
            height: 164px;
        }
        .style11
        {
            width: 235px;
            height: 170px;
        }
        .style12
        {
            width: 226px;
            height: 86px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div style="height: 733px">
    <table class="style3" style="height: 48px">
        <tr>
            <td colspan="2" 
                style="background-color: #FFFF00; font-size: large; font-weight: bold; font-style: italic; color: #CC3300;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Customer Home Page</td>
            <td 
                
                style="background-color: #FFFF00; font-size: large; font-weight: bold; font-style: italic; color: #CC3300;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" style="background-color: #0099CC">
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
&nbsp;<br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <table class="style8">
                    <tr>
                        <td>
                            <img alt="" class="style9" src="pic2/1.jpg" />&nbsp;&nbsp;&nbsp;
                            <img alt="" class="style9" src="pic2/6ftdish.jpg" />&nbsp;&nbsp;&nbsp;
                            <img alt="" class="style9" src="pic2/2~1.jpg" />&nbsp;&nbsp;&nbsp;
                            <img alt="" class="style10" src="pic2/28.jpg" />&nbsp;&nbsp;&nbsp;
                            <img alt="" class="style11" src="pic2/231745417.jpg" /></td>
                    </tr>
                </table>
            </td>
            <td class="style6" style="background-color: #999966">
                <asp:Panel ID="Panel2" runat="server" Height="601px">
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" 
                        BorderColor="#FFCC66" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                        Width="220px" BorderWidth="1px" ShowGridLines="True">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                            ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                </asp:Panel>
            </td>
            <td class="style6" style="background-color: #999966">
                &nbsp;</td>
        </tr>
    </table>
</div>
</asp:Content>


