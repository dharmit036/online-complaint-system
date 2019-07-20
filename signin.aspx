<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: small; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none">
<head runat="server">
       <title>signin</title>
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
<body style="font-family: verdana, Geneva, Tahoma, sans-serif; font-size: small; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none">
    <form id="form1" runat="server">
    <div>
           <div id="main">
            <div id="header">
                <div id="logo">
                    <div id="logo_text">
                        <!-- class="logo_colour", allows you to change the colour of the text -->
                        <h1><a href="index.html">Sign<span class="logo_colour"> In/Up</span></a></h1>
                        <!--<h2>Simple. Contemporary. Website Template.</h2>-->
                    </div>
                </div>
            </div>
        </div>
        <div id="menubar">
            <ul id="menu">
                <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
                <li><a href="containt.aspx">Home</a></li>
                <li class="selected"><a href="signin.aspx">Sign In/Sign UP</a></li>
                <li><a href="firpage1.aspx">FIR form</a></li>
                <li><a href="peopledesk.aspx">People Desk</a></li>
                <li><a href="contact.html">Contact Us</a></li>
            </ul>
        </div>
         <div id="site_content">
             <%--<form method="post" action="#">--%>
            <h2>Sign In</h2>
             Email-ID:<asp:TextBox ID="email1" runat="server"></asp:TextBox><br><br>
             Password:<asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox><br><br />
             <asp:Button ID="login" runat="server" Text="Login" /><br />

             <h2>Register Your Self</h2>

             First-Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br><br>
             Middle-Name:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />
             Last-Name:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /><br />
             Mobile:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br /><br />
             Email:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br /><br />
             Gender:<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                 <asp:ListItem Text="Male" Selected="False"></asp:ListItem>
                 <asp:ListItem Text="Female" Selected="False"></asp:ListItem>
             </asp:RadioButtonList>
             &nbsp; Address:<br />
&nbsp;<asp:TextBox ID="TextBox6" runat="server" Height="110px" TextMode="MultiLine" Width="226px"></asp:TextBox><br /><br />
             City:<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><br /><br />
             District:<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox><br /><br />
             Pincode:<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox><br /><br />
             State:<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox><br /><br />

             Enter new Password(length must be within 8-10 characters):<asp:TextBox ID="TextBox11" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<br />
             <br />
            
             <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" style="height: 26px" />
             <br />
           
             
             <br />     <div id="content">
        </div>
   
        </div>
    </div>
    </form>
</body>
</html>
