<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="User_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 356px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                Item Name</td>
            <td>
                <asp:TextBox ID="txtitemname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtitemname" ErrorMessage="Cannot be Blank" 
                    ViewStateMode="Enabled"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtitemname" ErrorMessage="Enter Valid Name" 
                    ValidationExpression="^[a-z -']+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Feedback</td>
            <td>
                <asp:TextBox ID="txtfeedback" runat="server" Height="95px" TextMode="MultiLine" 
                    Width="226px"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtfeedback" 
                    ErrorMessage="Cannot be Blank" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Table Name</td>
            <td>
                <asp:TextBox ID="txttablename" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txttablename" ErrorMessage="Cannot be Blank" 
                    ViewStateMode="Enabled"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnfsubmit" runat="server" onclick="btnfsubmit_Click" 
                    Text="Submit" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

