<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddGuest.aspx.cs" Inherits="AddGuest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- WhatsHelp.io widget -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5fe3260280a9a68b"></script>



 



   <!-- Go to www.addthis.com/dashboard to customize your tools -->
                
               
<!-- /WhatsHelp.io widget -->
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
                <!-- Go to www.addthis.com/dashboard to customize your tools -->
                <div class="addthis_inline_share_toolbox"></div>
            
        Enter Name:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Enter Age:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        Enter Mobile:-&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        Enter Email:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="View" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="My Invitation.jpeg"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" 
            Text="Chitransh Sent Invitation.. Check Your Mail Please!!"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            Height="195px" Width="757px">
            <Columns>
                <asp:TemplateField HeaderText="S NO.">
                <ItemTemplate>
                <%# Container.DataItemIndex+1 %>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="age" HeaderText="Age" />
                <asp:BoundField DataField="mobile" HeaderText="Mobile" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:TemplateField HeaderText="Invite">
                <ItemTemplate>
                    <asp:Button ID="invitebtn" runat="server" Text="Invite" OnClick="invite_send"/>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mail">
                <ItemTemplate>
                    <asp:Button ID="mailbtn" runat="server" Text="Mail Me" OnClick="mail_send" />
                </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
    
    </div>
    </form>
</body>
</html>
