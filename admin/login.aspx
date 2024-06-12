<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Ringing Beauty | Admin Login</title>
     <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="~/assets/css/bootstrap.min.css" />
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />
     <script src="assets/js/jquery.min.js"></script>
 <script src="assets/js/popper.min.js"></script>
     <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript">
    function caplock(e)
    {
    kc=e.keycode ? e.keycode: e.which;
    sk=e.shiftkey?e.shiftkey:((kc==16)?true:false);
    if(((kc>=65 && kc <=90)&&!sk)||((kc>=97 && kc <=122)&& sk))
    {
       document.getElementById('abc').style.visibility='visible';
       }
       else
       {
       document.getElementById('abc').style.visibility='hidden';
       }
       }
       </script>
    <%--<link href="admin.css" rel="stylesheet" type="text/css" />--%>
    <style type="text/css">
        .container {
            width: 100%;
            max-width: 400px;
            padding:10px;
        }

        .card {
                margin-top:100px;
            width: 100%;
            background-color: #f8f8f8; /* Warna card */
            padding: 20px;
            border-radius: 12px; /* Border radius card */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .container-form .form-control {
              padding: 10px;
              margin-bottom: 12px;
              border: 2px solid #ddd; /* Border color input */
              border-radius: 8px; /* Border radius input */
              transition: border-color 0.3s ease-in-out;
              outline: none;
              color: #333;
              background-color: #f4f4f4; /* Warna input */
            }

            .container-form .form-control:focus {
              border-color: #ff9900; /* Warna input saat focus */
            }

            .login-btn {
              background-color: #ff9900; /* Warna button */
              color: #fff;
              padding: 10px;
              border: none;
              border-radius: 8px; /* Border radius button */
              cursor: pointer;
              transition: background-color 0.3s ease-in-out;
            }

            .login-btn:hover {
              background-color: #ff6600; /* Warna button saat hover */
            }
        </style>
</head>
<body class="mnu">
    <form id="form1" runat="server">
        <div class="container mb-5" >
               <div class="card row">
                   <div class="card-header border-0 text-center" style="background:none;">
                       <h4>ADMIN LOGIN</h4>
                   </div>
                   <div class="card-body m-2">
                        <table class="tbll" >
                            <tr style="height:70px;">
                                <td class="lbl">
                                    UserName:&nbsp; </td>
                                <td>
                                    <asp:TextBox ID="txtuname" runat="server" placeholder="Enter Username" CssClass="txt form-control" 
                                        ontextchanged="TextBox1_TextChanged" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height:50px;">
                                <td class="lbl">
                                    Password:&nbsp; </td>
                                <td>
                                    <asp:TextBox ID="txtpass" onkeypress="caplock(event)" runat="server" placeholder="Enter Password" 
                                        CssClass="txt form-control" TextMode="Password" ></asp:TextBox><div id="abc" style="visibility:hidden">CAPS LOCK ON</div>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    </td>
                                <td class="style5">
                                    <asp:Button ID="Button1" runat="server" Text="Login" CssClass="login-btn" 
                                        onclick="Button1_Click"  />
                                &nbsp;&nbsp;
                                    </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    </td>
                                <td class="style5">
                                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                    </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style5">
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Back to Home</asp:HyperLink>
                                    </td>
                            </tr>
                       </table>
                   </div>
               </div>
        </div>
        
  
    </form>
</body>
</html>
