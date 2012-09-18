<%@ page language="VB" autoeventwireup="false" inherits="Chat_Default, App_Web__nfngmhw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Chat</title>
</head>
<body>

     You say :
     <input id="txtMsg" type="text" onkeydown="if (event.keyCode == 13) doit(); this.focus;" />

    <form id="form1" runat="server">

<table><tr><td>
<input id="rdEnglish" type="radio" value="English" name="Lang" runat="server" /><spam style=" color:Blue">English</spam></td><td>
<input id="rdRussian" type="radio" value="Russian" name="Lang" checked="true" runat="server"/><spam style=" color:Red">Russian</spam></td></tr></table>
    
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
 <div id="sourceText">
    <input id="txtOrg" runat="server" type="hidden"  />
    <input id="txtNew" runat="server" type="hidden"  />
     </div>
    <div id="translation">
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Enabled="true" Interval="3000">
            </asp:Timer>
        <asp:Table ID="tbl" runat="server" Width="18%">
        </asp:Table>
        </ContentTemplate>
         </asp:UpdatePanel>
       
    </div>
    <script>
      function translateText(response) {
          document.getElementById("translation").innerHTML += "<br>" + response.data.translations[0].translatedText;
          document.getElementById("txtOrg").value = document.getElementById("txtMsg").value
          document.getElementById("txtNew").value = response.data.translations[0].translatedText;
          form1.submit();
      }
        function doit() {
            var newScript = document.createElement('script');
            newScript.type = 'text/javascript';
            var sourceText = escape(document.getElementById("txtMsg").value);
            // WARNING: be aware that YOUR-API-KEY inside html is viewable by all your users.
            // Restrict your key to designated domains or use a proxy to hide your key
            // to avoid misuage by other party.
            var source 
            if (document.getElementById("rdEnglish").checked == true) {
                source = 'https://www.googleapis.com/language/translate/v2?key=AIzaSyAjXaJFe-CZkEHvlw9Ei3oPlcsRG4e2XNg&source=en&target=ru&callback=translateText&q=' + sourceText;
            }
            else {
                source = 'https://www.googleapis.com/language/translate/v2?key=AIzaSyAjXaJFe-CZkEHvlw9Ei3oPlcsRG4e2XNg&source=ru&target=en&callback=translateText&q=' + sourceText;
            }

                newScript.src = source;

            // When we add this script to the head, the request is sent off.
            document.getElementsByTagName('head')[0].appendChild(newScript);
        }

        window.onload = function() {
            document.getElementById("txtMsg").focus();
        };

//        alert(window.innerWidth);
    </script>
    
    </form>
</body>
</html>
