<%@ Page Language="C#" AutoEventWireup="true" CodeFile="firpage1.aspx.cs" Inherits="firpage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>fir</title>
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
<body style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: small; font-weight: normal; font-style: normal; font-variant: normal; text-transform: uppercase">
    <form id="form1" runat="server">
        <div id="main">
            <div id="header">
                <div id="logo">
                    <div id="logo_text">
                        <!-- class="logo_colour", allows you to change the colour of the text -->
                        <h1><a href="index.html">FIR<span class="logo_colour"> form</span></a></h1>
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
                <li class="selected"><a href="firpage1.aspx">FIR form</a></li>
                <li><a href="peopledesk.aspx">People Desk</a></li>
                <li><a href="contact.html">Contact Us</a></li>
            </ul>
        </div>

        <div id="site_content">
            <%--<form method="post" action="#">--%>
            Enter City:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>    
            
            <!--OnClick="Button1_Click"-->
                <br />
            <%--</form>--%>

            <br />
            Enter police station:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;<br />
            <br />
            enter your mobile no:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            enter complaint type:<asp:DropDownList ID="DropDownList1" runat="server" DataValueField="complaint" DataTextField="complaint">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>Haist</asp:ListItem>
                <asp:ListItem>Murder</asp:ListItem>
                <asp:ListItem>Robbery</asp:ListItem>
                <asp:ListItem>Harrasment</asp:ListItem>
                <asp:ListItem>Fraud</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            enter culprit&#39;s name:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            crime-detail:<br />
            <asp:TextBox ID="TextBox6" runat="server" Height="139px" TextMode="MultiLine" Width="369px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Submit" />

            <br />
            <br />
            Enter vehicle type:<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="type" DataValueField="type">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>

        </div>
        <div id="content">
        </div>
    </form>
</body>
</html>
