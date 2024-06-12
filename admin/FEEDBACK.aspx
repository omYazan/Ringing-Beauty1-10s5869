<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="FEEDBACK.aspx.cs" Inherits="admin_FEEDBACK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ringing Beauty | Feedbacks</title>
     <style>
     .gridview-header {
         border-bottom: 1px solid black;
         margin-bottom:2px;
     }
     table tr{
        height:40px;
    }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="row">
    <div class="card col-md-10 col-12 col-xl-8 mx-auto">
        <div class="card shadow border-0 mb-7">
                    <div class="card-header">
                        <h5 class="mb-0">Feedbacks</h5>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover table-nowrap">
                            <tr>
                                <td valign="top">
                                    <table class="style8">
                                        <tr>
                                            <td>
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            GridLines="Horizontal" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged" ForeColor="Black" style="text-align: center" Width="869px">
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle Font-Bold="True" Height="70" CssClass="gridview-header"  />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        </div>
            </div>
        </div>
       </div>
</asp:Content>

