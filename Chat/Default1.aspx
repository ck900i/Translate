<%@ page language="VB" autoeventwireup="false" inherits="Chat_Default1, App_Web__nfngmhw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<%--<meta http-equiv="Content-Type"
content="text/html;charset=UTF-8" />--%>

<meta name="viewport" content="width=device-width" , initial-scale=1.0">
    <title>Test Alfa</title>
</head>
<body>
    <form id="form1" runat="server">
    
    
    <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                
                
    <div>
    
        <table style="width:100%; height:100%">
            <tr>
                <td>
                    Select Language</td>
                <td>
                    <asp:RadioButton ID="rdRussian" runat="server" Text="Russian" Checked="true" 
                        GroupName="Lang" />
                </td>
                <td>
                    <asp:RadioButton ID="rdEnglish" runat="server" Text="English" 
                        GroupName="Lang" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                
     <%--               <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>--%>
                    <asp:TextBox ID="txtMsg" runat="server" Width="100%" AutoPostBack="True"></asp:TextBox>
            <%--      </ContentTemplate>
                     </asp:UpdatePanel>--%>
                     
                     
                     
                   <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                    <asp:Table ID="tbl" runat="server" Width="100%">
                    </asp:Table>
 
 
 
                     <asp:Timer ID="Timer1" runat="server" Interval="3000" Enabled="false">
                        </asp:Timer>
 
                        
                     </ContentTemplate>
                     </asp:UpdatePanel>
                     

                </td>
            </tr>
            
        </table>
    
    </div>
    </form>
</body>
</html>
