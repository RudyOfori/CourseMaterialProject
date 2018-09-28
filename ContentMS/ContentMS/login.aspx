<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ContentMS.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet" />
    <link href="css/creative.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/style.css"/>
    <title></title>
    <style>
        body {
                   background-image: url("images/road.jpeg");
                   background-color: #cccccc;
                }
        
        .auto-style1 {
            color: #0000FF;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
            <div id="overlay">
                <div id="mySidenav" class="sidenav">
                    <asp:HyperLink ID="about" runat="server" NavigateUrl="~/homepage.aspx" >Home</asp:HyperLink>
                    <asp:HyperLink ID="blog" runat="server" NavigateUrl="~/homepage.aspx#services">Services</asp:HyperLink>
                    <asp:HyperLink ID="projects" runat="server" NavigateUrl="~/homepage.aspx#portfolio">Products</asp:HyperLink>
                    <asp:HyperLink ID="contact" runat="server" NavigateUrl="~/login.aspx">Store</asp:HyperLink>

                  </div>
                  <div id="divover" class="auto-style1">

                      <table class="w-100">
                          <tr>
                              <td>
                                  <div id="logo">
                                    <img src="images/wapp2.png"/>
                                  </div>
                              </td>
                          </tr>
                          <tr>
                              <td>&nbsp;</td>
                          </tr>
                          <tr>
                              <td><asp:TextBox ID="txtusername" class="form-control form-rounded" runat="server" OnTextChanged="TextBox1_TextChanged" placeholder="  Username"></asp:TextBox></td>
                          </tr>
                          <tr>
                              <td><asp:TextBox ID="txtpassword" class="form-control form-rounded" runat="server" placeholder="  Password" OnTextChanged="txtpassword_TextChanged"></asp:TextBox></td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:TextBox ID="txtstud_id_num" class="form-control form-rounded" runat="server" placeholder="  Student number" Visible="true" OnTextChanged="txtstud_id_num_TextChanged"></asp:TextBox>
                              </td>
                          </tr>
                          <tr>
                              <td><asp:TextBox ID="txtid" runat="server" Visible="false"></asp:TextBox></td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:Button ID="btnsignup" runat="server" Text="Sign Up" class="btn btn-danger btn-sm" OnClick="btnlogin_Click" Width="225px" /></td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:Button ID="btnlogin" runat="server" Text="Login" class="btn btn-danger btn-sm" Visible="false" OnClick="btnlogin_Click" /></td>
                          </tr>
                          <tr>
                              <td> <div id="space"><p>Already have an account?<asp:LinkButton ID="btnlink1" runat="server" OnClick="btnlink1_Click" CssClass="auto-style1" ForeColor="#00CCFF">Sign In</asp:LinkButton></p></div></td>
                          
                          </tr>
                          <tr>
                              <td >&nbsp;</td>
                              <td>&nbsp;</td>
                          </tr>
                      </table>

                  

                    </div>
            </div>
               
                  <!--<div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                  </div>
                  <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                  </div>
                  <button type="submit" class="btn btn-primary">Submit</button>-->
                

        
    
    </form>
</body>
</html>
