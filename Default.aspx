<%@ page language="VB" autoeventwireup="false" inherits="_Default, App_Web_bkafxscy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Test Alfa</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txtNO" runat="server" Width="75px"></asp:TextBox>
        <asp:Button ID="btnGO" runat="server" Height="23px" Text="GO" Width="67px" />
        <br />
        <asp:TextBox ID="txtSMS" runat="server" Height="181px" TextMode="MultiLine" 
            Width="206px"></asp:TextBox>
    </form>
</body>
</html>
