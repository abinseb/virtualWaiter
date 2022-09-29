<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="additem.aspx.cs" Inherits="Admin_additem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 598px;
        }
        .style3
        {
            width: 527px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                ADD ITEM</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Item Name</td>
            <td class="style2">
                <asp:TextBox ID="txtname" runat="server" style="margin-bottom: 1px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Image</td>
            <td class="style2">
                <asp:Image ID="imgitem" runat="server" Height="142px" Width="140px" />
                <asp:FileUpload ID="fuditem" runat="server" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="upload" />
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Description</td>
            <td class="style2">
                <asp:TextBox ID="txtdec" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Category</td>
            <td class="style2">
                <asp:DropDownList ID="ddlcategory" runat="server" 
                    >
                    <asp:ListItem>starter</asp:ListItem>
                    <asp:ListItem>Fastfoods</asp:ListItem>
                    <asp:ListItem>Breakfast</asp:ListItem>
                    <asp:ListItem>NonVeg</asp:ListItem>
                    <asp:ListItem>Veg</asp:ListItem>
                    <asp:ListItem>Juice</asp:ListItem>
                    <asp:ListItem Value="Icecreams">Ice creams</asp:ListItem>
                    <asp:ListItem>Dinner</asp:ListItem>
                    <asp:ListItem>Lunch</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Price</td>
            <td class="style2">
                <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

