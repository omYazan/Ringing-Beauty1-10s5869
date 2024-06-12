<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="AddItem.aspx.cs" Inherits="admin_AddminItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ringing Beauty | Add Product</title>
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
                      <h5 class="mb-0">ADD PRODUCT</h5>
                  </div>
                 <div class="card-body row">
                        <div class="col-md-6 mb-2">
                            <asp:TextBox ID="txtiname" runat="server" placeholder="Enter Product Name" 
                            CssClass="form-control" Font-Bold="False" Font-Italic="False" 
                            ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="txtiname" ErrorMessage="Enter Product Name" ForeColor="Red"></asp:RequiredFieldValidator>
                            
                        </div>
                      
                         <div class="col-md-6 mb-2">
                             <asp:TextBox ID="txtprice" runat="server" placeholder="Enter Price" 
                              CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtprice" ErrorMessage="Enter Price" ForeColor="Red"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ControlToValidate="txtprice" ErrorMessage="Enter a numeric value" ForeColor="Red"
                                ValidationExpression="^\d+\.?\d*$"></asp:RegularExpressionValidator>
                         </div>
                        <div class="col-md-12 mb-2">
                             <asp:TextBox ID="txtdescrip" runat="server" placeholder=" Enter Description" 
                                  CssClass="form-control" ontextchanged="txtdescrip_TextChanged"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                 ControlToValidate="txtdescrip" ErrorMessage="Enter Detail" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    
                        <div class="col-md-6 mb-2">
                               <asp:TextBox ID="txtquan" runat="server" placeholder="Enter Quantity" 
                                CssClass="form-control"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                   ControlToValidate="txtquan" ErrorMessage="Enter Quantity" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                   ControlToValidate="txtquan" ErrorMessage="Enter a numeric value" ForeColor="Red"
                                   ValidationExpression="^\d+\.?\d*$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-6 mb-2">
                             <asp:DropDownList ID="DropDownList2" runat="server" CssClass="drp form-control">
                                <asp:ListItem>Select Size</asp:ListItem>
                                <asp:ListItem>01</asp:ListItem>
                                <asp:ListItem>02</asp:ListItem>
                                <asp:ListItem>03</asp:ListItem>
                                <asp:ListItem>04</asp:ListItem>
                                <asp:ListItem>05</asp:ListItem>
                                <asp:ListItem>06</asp:ListItem>
                                <asp:ListItem>07</asp:ListItem>
                                <asp:ListItem>08</asp:ListItem>
                                <asp:ListItem>09</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-6 mb-2">
                            <p class="p-2">Category Name:</p>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="drp form-control">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="DropDownList1" ErrorMessage="Enter Category Name" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-12">Images</div>
                       <div class="col-md-6 mb-2">
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"/>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="FileUpload1" ErrorMessage="Choose Image" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6 mb-2">  
                            <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="FileUpload2" ErrorMessage="Choose Image" 
                                ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>
                        <div class="col-md-6 mb-2">
                             <asp:FileUpload ID="FileUpload3" runat="server" CssClass="form-control" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                 ControlToValidate="FileUpload3" ErrorMessage="Choose Image" 
                                 ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-12 mb-2">
                            <asp:Button ID="Button9" runat="server" CssClass="btn btn-success" onclick="Button9_Click" 
                                Text="ADD PRODUCT" />
                           
                          
                        </div>
                     <div class="col-12 mb-2">
                          <asp:Label ID="lblmsg" runat="server" class="text-success"></asp:Label>
                     </div>
                </div>
            </div>
       

     <div class="card shadow border-0 mb-7 m-2">
             <div class="card-header">
                 <h5 class="mb-0">PRODUCTS</h5>
             </div>
             <div class="table-responsive">
                 <table class="table table-hover table-nowrap">
                    <tr>
                    <td class="style12" colspan="4">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            AutoGenerateDeleteButton="True" 
                            DataKeyNames="IID" onrowdeleting="GridView1_RowDeleting" 
                            onrowcancelingedit="GridView1_RowCancelingEdit1" 
                            onrowediting="GridView1_RowEditing1" 
                            onrowupdating="GridView1_RowUpdating1" BackColor="White" BorderColor="#CCCCCC" 
                            BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            GridLines="Horizontal" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="843px" 
                            ForeColor="Black"  >
                            <Columns>
                            <asp:CommandField CausesValidation="false" ShowEditButton="true" />
                                <asp:BoundField DataField="IName" HeaderText="ITEM NAME" 
                                    SortExpression="IName" />
                                <asp:BoundField DataField="price" HeaderText="PRICE" SortExpression="price" />
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

