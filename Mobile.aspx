
<%@ Page Inherits= "System.Web.UI.MobileControls.MobilePage" %>
<%@ Register TagPrefix="mobile"
    Namespace="System.Web.UI.MobileControls"
    Assembly="System.Web.Mobile" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
<mobile:Form runat="server">

  <mobile:Label runat="server">Code</mobile:Label>
  <mobile:TextBox Runat="server" ID="txtNO" ></mobile:TextBox>
  <mobile:TextBox MaxLength="700" Runat="server" ID="d1"></mobile:TextBox>
 
  
</mobile:Form>

</body>
</html>
