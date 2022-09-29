<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Employee_Reg.aspx.cs" Inherits="Admin_Employee_Reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 179px;
        }
        .style9
        {
            width: 371px;
        }
        .style7
        {
            width: 476px;
        }
        .style11
        {
            width: 179px;
            height: 34px;
        }
        .style12
        {
            width: 371px;
            height: 34px;
        }
        .style13
        {
            width: 476px;
            height: 34px;
        }
        .style14
        {
            height: 34px;
        }
        .style3
        {
            width: 179px;
            height: 26px;
        }
        .style10
        {
            height: 26px;
            width: 371px;
        }
        .style8
        {
            height: 26px;
            width: 476px;
        }
        .style4
        {
            height: 26px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                registration</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                First Name</td>
            <td class="style9">
                <asp:TextBox ID="txtfirstname" placeholder="Enter First name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtfirstname" ErrorMessage="Enter the first name" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Enter a valid  first name" 
                    ValidationExpression="^[a-z &amp;&amp;A-Z-']+$" ControlToValidate="txtfirstname" 
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Last Name</td>
            <td class="style12">
                <asp:TextBox ID="txtlastname" placeholder="Enter Last name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtlastname" ErrorMessage="Enter the last name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style13">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="Enter a valid  last name" ValidationExpression="^[a-z&amp;&amp;A-Z -']+$" 
                    ControlToValidate="txtlastname" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td class="style14">
            </td>
        </tr>
        <tr>
            <td class="style3">
                Gender</td>
            <td class="style10">
                <asp:RadioButtonList ID="rdogender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style8">
                &nbsp;</td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style3">
                DOB</td>
            <td class="style10">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style8">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style3">
                Place</td>Place</td>
            <td class="style10">
                <asp:TextBox ID="txtplace" runat="server"></asp:TextBox>
            </td>
            <td class="style8">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ErrorMessage="Enter a valid  place" ValidationExpression="^[a-z&amp;&amp;A-Z -']+$" 
                    ControlToValidate="txtplace" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                State         <td class="style8">
                District</td>
            <td class="style4">
                City</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                <asp:DropDownList ID="ddlstate" runat="server">
                </asp:DropDownList>
            </td>
            <td class="style8">
                <asp:DropDownList ID="ddldistrict" runat="server">
                </asp:DropDownList>
            </td>
            <td class="style4">
                <asp:DropDownList ID="ddlcity" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                PIN</td>
            <td class="style10">
                &nbsp;&nbsp;
                <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtpin" ErrorMessage="Enter pin" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Mob Number</td>
            <td class="style10">
                <asp:TextBox ID="txtmobno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtmobno" ErrorMessage="Enter mob number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style8">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ErrorMessage="Enter valid Mob number" ValidationExpression="^[7-9][0-9]{9}$" 
                    ControlToValidate="txtmobno" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Email
            </td>
            <td class="style10">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Enter email" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style8">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ErrorMessage="Enter valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ControlToValidate="txtemail" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Blood Group</td>
            <td class="style10">
                <asp:DropDownList ID="ddlbloodgrp" runat="server">
                    <asp:ListItem Selected="True" Value="Select"></asp:ListItem>
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                    <asp:ListItem>O-</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>AB-</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style8">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Password</td>
            <td class="style10">
                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="Enter the password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style3">
                Confirm Password</td>
            <td class="style10">
                <asp:TextBox ID="txtconfirmpassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword" 
                    ErrorMessage="*"></asp:CompareValidator>
            </td>
            <td class="style8">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td class="style10">
                </td>
            <td class="style8">
                </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style9">
                <asp:Button ID="Button1" runat="server" Text="Submit" 
                    onclick="Button1_Click1" />
            </td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

