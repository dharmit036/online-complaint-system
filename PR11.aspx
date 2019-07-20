<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PR11.aspx.cs" Inherits="PR11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>people-desk</title>
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
     <div>
    <div id="main">
            <div id="header">
                <div id="logo">
                    <div id="logo_text">
                        <!-- class="logo_colour", allows you to change the colour of the text -->
                        <h1>People Desk</h1>
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
                <li class="selected"><a href="peopledesk.aspx">People Desk</a></li>
                <li><a href="contact.html">Contact Us</a></li>
            </ul>
        </div>
         <div id="site_content">
             <%--<form method="post" action="#">--%>
             <asp:Button ID="Button1" Text="Show your Data" runat="server" OnClick="Button1_Click" />

                 <div id="content">
        </div>
   
             <br />
             <br />
             <asp:GridView ID="GridView1" runat="server">
             </asp:GridView>
   
             <br />
             Enter mobile no:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Bind it" />
             <br />
             Enter city:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
             <br />
             Enter Name:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
             <br />
             <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" />
             <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" />
   
             <br />
             <br />
             Mobile No:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
             </asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [signup1]"></asp:SqlDataSource>
             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" DataKeyNames="mobile">
                 <Columns>
                     <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                     <asp:BoundField DataField="middle" HeaderText="middle" SortExpression="middle" />
                     <asp:BoundField DataField="last" HeaderText="last" SortExpression="last" />
                     <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" ReadOnly="True" />
                     <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                     <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                     <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                     <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                     <asp:BoundField DataField="district" HeaderText="district" SortExpression="district" />
                     <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                     <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [signup1]"></asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [signup1] WHERE ([name] = @name)">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="DropDownList1" Name="name" PropertyName="SelectedValue" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
   
             Category:<asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
             </asp:DropDownList>
             <br />
   
        </div>
    </div>
    </form>
</body>
</html>
