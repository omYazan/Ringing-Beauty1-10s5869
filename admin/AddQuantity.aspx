<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="AddQuantity.aspx.cs" Inherits="admin_AddQuantity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <title>Ringing Beauty | Add Stock</title>
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
                      <h5 class="mb-0">ADD QUANTITY</h5>
                  </div>
                 <div class="card-body row">
                    <div class="mb-2 col-md-6">
                          <asp:DropDownList ID="DropDownList2" runat="server" CssClass="drp form-control"  >
                            </asp:DropDownList>
                    </div>
                     <div class="mb-2 col-md-6">
                           <asp:TextBox ID="txtquan" runat="server" placeholder="Qnt" 
                              CssClass="txt form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                              ControlToValidate="txtquan" ErrorMessage="Enter Quantity" 
                              ForeColor="Red"></asp:RequiredFieldValidator>
                     </div>
                     <div class="mb-2 col-12">
                            <asp:Button ID="Button9" runat="server" CssClass="btn btn-success" onclick="Button9_Click" 
                           Text="ADD " />
                     </div>
                     <div class="mb-2 col-12">
                         <asp:Label ID="Label1" CssClass="text-success" runat="server"></asp:Label>
                     </div>
                </div>
            </div>
        
   
             <div class="card shadow border-0 mb-7 m-2">
                     <div class="card-header">
                         <h5 class="mb-0">PRODUCTS STOCK</h5>
                     </div>
                     <div class="table-responsive">
                         <table class="table table-hover table-nowrap">
                             <tr>
                                <td colspan="2">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" 
                                        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                        GridLines="Horizontal" Width="876px" ForeColor="Black" >
                                        <Columns>
                                            <asp:BoundField DataField="INAME" HeaderText="ITEM NAME" 
                                                SortExpression="INAME" />
                                            <asp:BoundField DataField="QNT" HeaderText="TOTAL QUANTITY" 
                                                SortExpression="QNT" />
                                            <asp:BoundField DataField="AQNT" HeaderText="AVAILABLE QUANTITY" 
                                                SortExpression="AQNT" />
                                            <asp:BoundField DataField="SQNT" HeaderText="SELL QUANTITY" 
                                                SortExpression="SQNT" />
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
</asp:Content>

