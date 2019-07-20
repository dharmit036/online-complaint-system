<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact us</title>
     <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
    <style type="text/css">
        #TextArea1 {
            height: 89px;
            width: 220px;
        }

        r {
            color: #f31d1d;
        }

        #TextArea2 {
            height: 222px;
            width: 445px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="main">
            <div id="header">
                <div id="logo">
                    <div id="logo_text">
                        <!-- class="logo_colour", allows you to change the colour of the text -->
                        <h1><a href="index.html">Contact<span class="logo_colour"> Us</span></a></h1>
                        <!--<h2>Simple. Contemporary. Website Template.</h2>-->
                    </div>
                </div>
            </div>
        </div>
        <div id="menubar">
            <ul id="menu">
                <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
                <li><a href="containt.aspx">Home</a></li>
                <li><a href="signin.aspx">Sign In/Sign UP</a></li>
                <li><a href="firpage1.aspx">FIR form</a></li>
                <li><a href="peopledesk.aspx">People Desk</a></li>
                <li class="selected"><a href="contactus.aspx">Contact Us</a></li>
            </ul>
        </div>

        <div id="site_content">
           
            <h2>Would you like our system?Please rate us and give feedback</h2><br />
            Rate our app:
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Text="1" Selected="False"></asp:ListItem>
                 <asp:ListItem Text="2" Selected="False"></asp:ListItem>
                 <asp:ListItem Text="3" Selected="False"></asp:ListItem>
                 <asp:ListItem Text="4" Selected="False"></asp:ListItem>
                 <asp:ListItem Text="5" Selected="False"></asp:ListItem>
            </asp:RadioButtonList>

            <h3>You can also give suggestion</h3>

        Suggestion:<br />
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="109px" TextMode="MultiLine" Width="288px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" />
            <br />
        
        </div>
        <div id="content">
        </div>
    </form>
</body>
</html>
