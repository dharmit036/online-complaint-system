<%@ Page Language="C#" AutoEventWireup="true" CodeFile="peopledesk.aspx.cs" Inherits="peopledesk" %>

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
             <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="mobile" DataSourceID="SqlDataSource1">
                 <Columns>
                     <asp:ImageField DataImageUrlField="name" DataImageUrlFormatString="flag.png" HeaderText="Image">
                     </asp:ImageField>
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                     <asp:HyperLinkField HeaderText="View Link" NavigateUrl="http://moodle.ict.gnu.ac.in/" Text="Visit This" />
                     <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                     <asp:BoundField DataField="middle" HeaderText="middle" SortExpression="middle" />
                     <asp:BoundField DataField="last" HeaderText="last" SortExpression="last" />
                     <asp:BoundField DataField="mobile" HeaderText="mobile" ReadOnly="True" SortExpression="mobile" />
                     <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                     <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                     <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                     <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                     <asp:BoundField DataField="district" HeaderText="district" SortExpression="district" />
                     <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                     <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [signup1] WHERE [mobile] = @original_mobile AND [name] = @original_name AND [middle] = @original_middle AND [last] = @original_last AND [email] = @original_email AND [gender] = @original_gender AND [address] = @original_address AND [city] = @original_city AND [district] = @original_district AND [state] = @original_state AND [password] = @original_password" InsertCommand="INSERT INTO [signup1] ([name], [middle], [last], [mobile], [email], [gender], [address], [city], [district], [state], [password]) VALUES (@name, @middle, @last, @mobile, @email, @gender, @address, @city, @district, @state, @password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [signup1]" UpdateCommand="UPDATE [signup1] SET [name] = @name, [middle] = @middle, [last] = @last, [email] = @email, [gender] = @gender, [address] = @address, [city] = @city, [district] = @district, [state] = @state, [password] = @password WHERE [mobile] = @original_mobile AND [name] = @original_name AND [middle] = @original_middle AND [last] = @original_last AND [email] = @original_email AND [gender] = @original_gender AND [address] = @original_address AND [city] = @original_city AND [district] = @original_district AND [state] = @original_state AND [password] = @original_password">
                 <DeleteParameters>
                     <asp:Parameter Name="original_mobile" Type="Decimal" />
                     <asp:Parameter Name="original_name" Type="String" />
                     <asp:Parameter Name="original_middle" Type="String" />
                     <asp:Parameter Name="original_last" Type="String" />
                     <asp:Parameter Name="original_email" Type="String" />
                     <asp:Parameter Name="original_gender" Type="String" />
                     <asp:Parameter Name="original_address" Type="String" />
                     <asp:Parameter Name="original_city" Type="String" />
                     <asp:Parameter Name="original_district" Type="String" />
                     <asp:Parameter Name="original_state" Type="String" />
                     <asp:Parameter Name="original_password" Type="String" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="name" Type="String" />
                     <asp:Parameter Name="middle" Type="String" />
                     <asp:Parameter Name="last" Type="String" />
                     <asp:Parameter Name="mobile" Type="Decimal" />
                     <asp:Parameter Name="email" Type="String" />
                     <asp:Parameter Name="gender" Type="String" />
                     <asp:Parameter Name="address" Type="String" />
                     <asp:Parameter Name="city" Type="String" />
                     <asp:Parameter Name="district" Type="String" />
                     <asp:Parameter Name="state" Type="String" />
                     <asp:Parameter Name="password" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="name" Type="String" />
                     <asp:Parameter Name="middle" Type="String" />
                     <asp:Parameter Name="last" Type="String" />
                     <asp:Parameter Name="email" Type="String" />
                     <asp:Parameter Name="gender" Type="String" />
                     <asp:Parameter Name="address" Type="String" />
                     <asp:Parameter Name="city" Type="String" />
                     <asp:Parameter Name="district" Type="String" />
                     <asp:Parameter Name="state" Type="String" />
                     <asp:Parameter Name="password" Type="String" />
                     <asp:Parameter Name="original_mobile" Type="Decimal" />
                     <asp:Parameter Name="original_name" Type="String" />
                     <asp:Parameter Name="original_middle" Type="String" />
                     <asp:Parameter Name="original_last" Type="String" />
                     <asp:Parameter Name="original_email" Type="String" />
                     <asp:Parameter Name="original_gender" Type="String" />
                     <asp:Parameter Name="original_address" Type="String" />
                     <asp:Parameter Name="original_city" Type="String" />
                     <asp:Parameter Name="original_district" Type="String" />
                     <asp:Parameter Name="original_state" Type="String" />
                     <asp:Parameter Name="original_password" Type="String" />
                 </UpdateParameters>
             </asp:SqlDataSource>
   
        </div>
    </div>
    </form>
</body>
</html>
