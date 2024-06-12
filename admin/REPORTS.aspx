<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="REPORTS.aspx.cs" Inherits="admin_REPORTS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title>Ringing Beauty | Reports</title>
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
       <div class="col-md-10 col-12 col-xl-8 mx-auto p-2">
           <div class="card m-2">
               <div class="card-header">
                   <h5 class="mb-0">Reports</h5>
               </div>
               <div class="card-body row">
                   <div class="mb-2 col-md-6">
                       Select Category
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="drp form-control">
                         </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                             ControlToValidate="DropDownList1" ErrorMessage="Select Category" 
                             ForeColor="Red" InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                     <div class="col-12 mb-2">
                        <asp:Button ID="Button9" runat="server" CssClass="btn btn-success" onclick="Button9_Click" 
                            Text="View" />
                        <asp:Label ID="lblmsg" CssClass="text-success" runat="server"></asp:Label>
                     </div>
                   <div class="col-12">
                       <div class="table-responsive">
                              <table class="table table-hover table-nowrap">
                                 <tr>
                                     <td colspan="2">
                             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                 BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                 CellPadding="4" GridLines="Horizontal" Width="873px" ForeColor="Black" style="text-align: center">
                                 <Columns>
                                     <asp:TemplateField HeaderText="Image">
                                     <ItemTemplate>
                                     <asp:Image runat="server" ID="imggg" ImageUrl='<%#Eval("image") %>' Width="60px" Height="60px" />
                                     </ItemTemplate>
                                     </asp:TemplateField>
                                     <asp:BoundField DataField="iname" HeaderText="ItemName" />
                                     <asp:BoundField DataField="price" HeaderText="Price" />
                                     <asp:BoundField DataField="Qnt" HeaderText="Qnt" />
                                     <asp:BoundField DataField="aqnt" HeaderText="Available" />
                                     <asp:BoundField DataField="sqnt" HeaderText="SellQnt" />
                                 </Columns>
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
                       </div>

                   </div>
                </div>
            </div>
        </div>
    </div>
               
          
</asp:Content>

