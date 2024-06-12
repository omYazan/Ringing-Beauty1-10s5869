 <%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Change Password.aspx.cs" Inherits="admin_Change_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ringing Beauty | Change Password</title>
    <style type="text/css">
        .style9
        {
            width: 516px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container-fluid">
             <div class="mb-npx">
                 <div class="row align-items-center">
                     <div class="col-sm-6 col-12 mb-4 mb-sm-0">
                         <!-- Title -->
                         <h1 class="h2 mb-0 ls-tight">Change Password</h1>
                     </div>
                 </div>
                 <!-- Nav -->
             </div>
         </div>
 <div class="row">
     <div class="card col-md-8 col-12 col-xl-6 mx-auto">
    <table class="tbl">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style9">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr height="80px">
                    <td class="lbl">
                        Enter New Password :</td>
                    <td>
                        <asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtpass" ErrorMessage="Password not Correct" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr height="80px">
                    <td class="lbl">
                        Confirm Password:</td>
                    <td>
                        <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ControlToCompare="txtpass" ControlToValidate="txtcpass" 
                            ErrorMessage=" Password do not match" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" onclick="Button10_Click" 
                            Text="Change Password" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" CssClass="text-success" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
         </div>
     </div>
</asp:Content>
