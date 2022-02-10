<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo2.aspx.cs" Inherits="Demo2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Show data" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        <br />
        PAGING-<br />
        
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Paging" />
        
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" AllowPaging="true" OnPageIndexChanging="Click" 
            Height="411px" style="margin-top: 18px" >
            <Columns>
                <asp:BoundField DataField="vurl" HeaderText="Video url " />
                <asp:BoundField DataField="vtitle" HeaderText="Video Title" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
