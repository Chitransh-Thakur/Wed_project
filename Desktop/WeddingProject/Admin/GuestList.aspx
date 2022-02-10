<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GuestList.aspx.cs" Inherits="Admin_GuestList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('back_guest.jpg'); background-size: cover;">
    <form id="form1" runat="server">
    <div style="font-weight: bolder; font-size: x-small; font-family: Verdana;">
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Enter the User Id -
        <asp:TextBox ID="TextBox1" runat="server" Height="40px" style="margin-top: 7px" 
            Width="338px"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="View" 
            BackColor="#33CCCC" ForeColor="#660033" Height="45px" Width="107px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            Height="100%" Width="100%" AutoGenerateColumns="False" 
            style="margin-top: 15px; margin-bottom: 0px" ForeColor="Black" 
            GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="S No">
                <ItemTemplate>
                  <%# Container.DataItemIndex+1 %>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="mobile" HeaderText="Mobile" />
                <asp:BoundField DataField="msg" HeaderText="Message" />
                <asp:TemplateField HeaderText="Whatsapp">
                <ItemTemplate>
                    <asp:Button ID="invitebtn" runat="server" Text="SEND" OnClick="invite_send" BackColor="#128C7E" ForeColor="AntiqueWhite"  style="padding:5px;"/></ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mail ">
                <ItemTemplate>
                    <asp:Button ID="mailbtn" runat="server" Text="MAIL" OnClick="mail_send" BackColor="#EA4335" ForeColor="AntiqueWhite" style="padding:5px;"/>
                </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
