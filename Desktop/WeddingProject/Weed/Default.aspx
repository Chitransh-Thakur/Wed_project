<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FileUpload ID="FileUpload1" runat="server" Height="40px" Width="324px" />
&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" />
&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Preview" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:Image ID="Image1" runat="server" Height="700px" Width="600px" 
            AlternateText ="Click on preview after uploading the pic to preview it" 
            ImageUrl="~/images.jpg"/>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
