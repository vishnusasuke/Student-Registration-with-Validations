<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <p class="auto-style1">
            Student Registration</p>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="StudentName"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="21px"  style="margin-left: 80px" Width="270px"></asp:TextBox>
        </p>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="Email Address"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Height="21px" style="margin-left: 80px" Width="270px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*" >*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="E-mail format of name@domain.xyz">Invalid format!</asp:RegularExpressionValidator>
        </p>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style1">
            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Height="21px" style="margin-left: 80px" Width="270px" TextMode="Password"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,12}$" ControlToValidate="TextBox3" ErrorMessage="Password should contain 1 upper, 1 lower, 1 digit lenght 8-12"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p style="text-align: left">
            &nbsp;</p>
        <p style="text-align: left">
            <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Height="21px" style="margin-left: 80px" Width="270px" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Paasword not matched"></asp:CompareValidator>
        </p>
        <p style="text-align: left">
            &nbsp;</p>
        <p style="text-align: left">
            <asp:Label ID="Label5" runat="server" Text="Phone Number"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Height="21px" style="margin-left: 80px" Width="270px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" ErrorMessage="Enter Valid phone number"></asp:RegularExpressionValidator>
        </p>
        <p style="text-align: left">
            &nbsp;</p>
        <p style="text-align: left">
            <asp:Label ID="Label6" runat="server" Text="Date of Birth(m/d/yyyy)"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" Height="21px" style="margin-left: 80px" Width="270px"></asp:TextBox>
            <asp:CompareValidator ID="cvdate"  Operator="DataTypeCheck" Type="Date" ControlToValidate="TextBox6" runat="server" ErrorMessage="enter correct format of date"></asp:CompareValidator>
             <asp:RegularExpressionValidator ID="revc" ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$" ControlToValidate="TextBox6" runat="server"></asp:RegularExpressionValidator>
        </p>
        <p style="text-align: left">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        </p>
        
    </form>
    
    
</body>
</html>

