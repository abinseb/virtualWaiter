<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="view_feedback.aspx.cs" Inherits="Admin_view_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="Gridfeedback" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="feedbackid" />
                    <asp:BoundField DataField="itemname" />
                    <asp:BoundField DataField="feedback" />
                    <asp:BoundField DataField="tablename" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

