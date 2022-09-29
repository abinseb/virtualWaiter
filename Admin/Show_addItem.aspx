<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Show_addItem.aspx.cs" Inherits="Admin_Show_addItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 531px;
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
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="ddlcategory" runat="server" Height="16px" Width="184px" 
                    >
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="bt" runat="server" onclick="Button1_Click" Text="Go" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <table class="style1">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" 
                        ondeletecommand="DataList1_DeleteCommand" oneditcommand="DataList1_EditCommand" 
                        onupdatecommand="DataList1_UpdateCommand1" 
                        onselectedindexchanged="DataList1_SelectedIndexChanged">
                        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <ItemTemplate>
                            <table class="style1">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        Id</td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("fid") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td class="style3">
                                        Item Name</td>
                                    <td class="style2">
                                        <asp:TextBox ID="txtname" runat="server" 
                        style="margin-bottom: 1px" Text='<%# Eval("itemname") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td class="style3">
                                        Image</td>
                                    <td class="style2">
                                        <asp:Image ID="imgitem" runat="server" Height="142px" 
                        Width="140px" ImageUrl='<%# Eval("photo") %>' />
                                        <asp:FileUpload ID="fuditem" runat="server" />
                                        <asp:Button ID="Button2" runat="server" 
                         Text="upload" CommandName="update" onclick="Button2_Click" />
                                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td class="style3">
                                        Description</td>
                                    <td class="style2">
                                        <asp:TextBox ID="txtdec" runat="server" Text='<%# Eval("description") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td class="style3">
                                        Category</td>
                                    <td class="style2">
                                        <asp:DropDownList ID="ddlcategory" runat="server" 
                                            SelectedValue='<%# Eval("category") %>'>
                                            <asp:ListItem>starter</asp:ListItem>
                                            <asp:ListItem>Fastfoods</asp:ListItem>
                                            
                                            <asp:ListItem>Breakfast</asp:ListItem>
                                            <asp:ListItem>NonVeg</asp:ListItem>
                                            <asp:ListItem>Veg</asp:ListItem>
                                            <asp:ListItem>Juice</asp:ListItem>
                                            <asp:ListItem Value="Icecreams">Ice creams</asp:ListItem>
                                            
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td class="style3">
                                        Price</td>
                                    <td class="style2">
                                        <asp:TextBox ID="txtprice" runat="server" Text='<%# Eval("price") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td class="style2">
                                        <asp:Button ID="Button1" runat="server" 
                         Text="Edit" Width="62px" CommandName="Update" onclick="Button1_Click1" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button3" runat="server" Text="Delete" CommandName="delete" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataList>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblmg" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

