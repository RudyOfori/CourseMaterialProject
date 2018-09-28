<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="ContentMS.Store" %>

<%@ Register Assembly="DevExpress.Web.v15.2, Version=15.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="UTF-8"/>
   <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
   <meta name="viewport" content="width=device-width, initial-scale=1"/>   
   <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
   <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" type="text/css"/>
   <link href="css/creative.min.css" rel="stylesheet"/>
   <link href="css/bootstrap.min.css" rel="stylesheet" />
   <link rel="stylesheet" href="css/style.css"/>
   <title>Home</title>
   <style>
        body {
                  background-color:rgba(110, 52, 46,0.5);
             }       
       .auto-style1 {
           left: 0px;
           top: 2px;
       }
       .auto-style2 {
           width: 401px;
       }
       .auto-style3 {
           width: 172px;
       }
       .auto-style4 {
           width: 348px;
       }
   </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse">
				<div class="container">
				    <div class="navbar-header">
				    	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapsemenu" aria-expanded="false" > <span class="sr-only"></span>
				    	<span class="icon-bar"></span>
				    <span class="icon-bar"></span>
				    <span class="icon-bar"></span>
				</button>
				      <a href="#" class="navbar-left" id="brand">
				        <img src="images\wapp.png" class="d-inline-block align-top"/>    <strong>WAPP</strong>
				      </a>
				    </div>
				    <div class="collapse navbar-collapse" id="collapsemenu">
				    <ul class="nav navbar-nav navbar-right">
				      <li><asp:HyperLink runat="server" NavigateUrl="~/homepage.aspx" >Home</asp:HyperLink></li>
				      <li><asp:HyperLink runat="server" NavigateUrl="~/homepage.aspx#services">Services</asp:HyperLink></li>
				      <li><asp:HyperLink runat="server" NavigateUrl="~/homepage.aspx#portfolio">Products</asp:HyperLink></li>
				      <li class="active"><asp:HyperLink runat="server" NavigateUrl="~/login.aspx">Store</asp:HyperLink></li>
				      <li ><asp:HyperLink runat="server" NavigateUrl="~/login.aspx">Logout</asp:HyperLink></li>
				    </ul> 
				    </div>   
			  	</div>
			</nav>
        <header id ="mainheader">
	            <div class="tops">
	                <div class="container">
	                    <div class="row">
	                        <div class="col-lg-8 col-lg-offset-4">
	                            <h4>WELCOME TO THE WAPP STORE!</h4>
	                        </div>
	                    </div>
	                </div>
	            </div>
        </header>
       <div class="container">                    
	            <div class="row"> 
                   <div class="container caption">
	                  <h3>ONLY ON WAPP STORE</h3>
	               </div>                      
	            	<div class="col-lg-3" >
                            <div class="polaroid">
                              <img src="img/portfolio/thumbnails/dutch2.jpeg" style="width :100%; height:80%"/>
                              <div class="contain">
                                <p>The Troll's tongue in Hardanger, Norway</p>
                              </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="polaroid">
                              <img src="img/portfolio/thumbnails/dutch1.jpeg" style="width :100%; height:80%"/>
                              <div class="contain">
                                <p>The Troll's tongue in Hardanger, Norway</p>
                              </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="polaroid">
                              <img src="img/portfolio/thumbnails/dutch4.jpeg" style="width :100%; height:80%"/>
                              <div class="contain">
                                <p>The Troll's tongue in Hardanger, Norway</p>
                              </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            
                           <div class="col-lg-6 caption" id="capt">
	                         <h3>TRENDING</h3>
	                        </div>
                               
                            <div class="aside">
                                                
			                     <div class="container">
			                         <div class="row">
			                             <div class="col-lg-12">
			                                 <div class="row" id="hold">
			                                     <div class="col-lg-1" id="t1">
			                                         <img src="img/portfolio/thumbnails/p3.jpeg" width="120" />
			                                     </div>
			                                     <div class="col-lg-10 trend">
			                                         <p>llot yuite pam </p>
			                                     </div>
			                                 </div>
			                             </div>
			                             <div class="col-lg-12" id="t2">
			                                 <div class="row">
			                                     <div class="col-lg-1">
			                                         <img src="img/portfolio/thumbnails/p1.jpeg" width="120" />
			                                     </div>
			                                     <div class="col-lg-10 trend">
			                                         <p>llot yuite pam </p>
			                                     </div>
			                                 </div>
			                             </div>
			                             <div class="col-lg-12" id="t3">
			                                 <div class="row">
			                                     <div class="col-lg-1">
                                                     <img src="img/portfolio/thumbnails/p2.jpeg" width="120" />			                                         
			                                     </div>
			                                     <div class="col-lg-10 trend">
			                                         <p> llot yuite pam </p>
			                                     </div>
			                                 </div>
			                             </div>
                                         <div class="col-lg-12" id="t4">
			                                 <div class="row">
			                                     <div class="col-lg-1">
                                                     <img src="img/portfolio/thumbnails/p2.jpeg" width="120" />			                                         
			                                     </div>
			                                     <div class="col-lg-10 trend">
			                                         <p> llot yuite pam </p>
			                                     </div>
			                                 </div>
			                             </div>
			                         </div>

                            </div>
                        </div>
                    </div>
                 </div>
        </div>
        <div class="container caption">
	       <h3>UPLOAD</h3>
	    </div>
        <section class="container hang" >                    	
           <div class="row">
            <div class="col-lg-6 text-center">
			  <div class="service-box mt-5 mx-auto">
			   <i class="fa fa-4x fa-cloud-upload text-primary mb-3 sr-icons"></i>
                  <br />

                  <table class="nav-justified">
                      <tr>
                          <td class="auto-style4">&nbsp;</td>
                      </tr>
                      <tr>
                          <td class="auto-style4">&nbsp;</td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              <asp:TextBox ID="TextBox1" runat="server" CssClass="col-xs-offset-0" placeholder="  Name of file" class="form-control-lg" Width="219px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              &nbsp;</td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" Height="30px" Width="227px" class="form-control-lg">
                                  <asp:ListItem>Computer Science</asp:ListItem>
                                  <asp:ListItem>Mathematics</asp:ListItem>
                                  <asp:ListItem>physics</asp:ListItem>
                              </asp:DropDownList>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              &nbsp;</td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              <asp:DropDownList ID="DropDownList2" runat="server" Enabled="False" Height="20px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="228px" AutoPostBack="True" class="form-control-lg">
                              </asp:DropDownList>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              &nbsp;</td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              <asp:DropDownList ID="DropDownList3" runat="server" Enabled="False" Height="26px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="226px" AutoPostBack="True" class="form-control-lg">
                                  <asp:ListItem>year 1</asp:ListItem>
                                  <asp:ListItem>year 2</asp:ListItem>
                                  <asp:ListItem>year 3</asp:ListItem>
                                  <asp:ListItem>year 4</asp:ListItem>
                                  <asp:ListItem>year 5</asp:ListItem>
                                  <asp:ListItem>year 6</asp:ListItem>
                              </asp:DropDownList>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              &nbsp;</td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              <asp:DropDownList ID="DropDownList4" runat="server" Enabled="False" Height="27px" Width="225px" AutoPostBack="True" class="form-control-lg">
                                  <asp:ListItem>semester 1</asp:ListItem>
                                  <asp:ListItem>semester 2</asp:ListItem>
                              </asp:DropDownList>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              &nbsp;</td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              &nbsp;</td>
                      </tr>
                  </table>

                  <table class="nav-justified">
                      <tr>
                          <td class="auto-style2">
                            <asp:FileUpload ID="fufile" runat="server" class="col-lg-12 form-control-file" CssClass="auto-style1" Width="396px"/>
                          </td>
                          <td>
                            <asp:Button ID="btnupload" runat="server" Text="Upload" class="btn btn-danger left" OnClick="btnupload_Click"/>
			              </td>
                          <td class="auto-style3">
                              <asp:Label ID="lberror" runat="server" ForeColor="#FF3300" Text="please upload a file" Visible="False"></asp:Label>
			              </td>
                      </tr>
                      <tr>
                          <td class="auto-style2">
                              &nbsp;</td>
                          <td>
                              &nbsp;</td>
                          <td class="auto-style3">
                              &nbsp;</td>
                      </tr>
                  </table>
                  
			  </div>			  
             </div>
               <div class="col-lg-6 text-center rouge">
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowCommand="GridView1_RowCommand">
                      <Columns>
                          <asp:TemplateField HeaderText="File">
                              <ItemTemplate>
                                  <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:BoundField DataField="Size" HeaderText="Size in bytes" />
                          <asp:BoundField DataField="Type" HeaderText="File Type" />
                      </Columns>
                      <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                      <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                      <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                      <RowStyle BackColor="White" ForeColor="#330099" />
                      <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                      <SortedAscendingCellStyle BackColor="#FEFCEB" />
                      <SortedAscendingHeaderStyle BackColor="#AF0101" />
                      <SortedDescendingCellStyle BackColor="#F6F0C0" />
                      <SortedDescendingHeaderStyle BackColor="#7E0000" />
                  </asp:GridView>
               </div>
            </div>
                    	
         </section>
       <!-- <div class="container caption">
	       <h3>DOWNLOAD</h3>
	    </div>
         <section class="container hang">                    	
           <div class="row">
            <div class="col-lg-6 text-center">
			  <div class="service-box mt-5 mx-auto">
			   <i class="fa fa-4x fa-cloud-download text-primary mb-3 sr-icons"></i>
                  <br />

                  <table class="nav-justified">
                      <tr>
                          <td class="auto-style4">&nbsp;</td>
                      </tr>
                      <tr>
                          <td class="auto-style4">&nbsp;</td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              <asp:TextBox ID="TextBox2" runat="server" CssClass="col-xs-offset-0" placeholder="  search by faculty" class="form-control-lg" Width="219px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              &nbsp;</td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              <asp:TextBox ID="TextBox3" runat="server" CssClass="col-xs-offset-0" placeholder="  search by department" class="form-control-lg" Width="219px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              &nbsp;</td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              <asp:TextBox ID="TextBox4" runat="server" CssClass="col-xs-offset-0" placeholder="  search by year" class="form-control-lg" Width="219px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              &nbsp;</td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              <asp:TextBox ID="TextBox5" runat="server" CssClass="col-xs-offset-0" placeholder="  search by semester" class="form-control-lg" Width="219px"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style4">
                              &nbsp;</td>
                      </tr>                                           
                  </table>                 
                  
			  </div>			  
             </div>
               <div class="col-lg-6 text-center rouge">
                   <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowCommand="GridView1_RowCommand">
                      <Columns>
                          <asp:TemplateField HeaderText="File">
                              <ItemTemplate>
                                  <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:BoundField DataField="Size" HeaderText="Size in bytes" />
                          <asp:BoundField DataField="Type" HeaderText="File Type" />
                      </Columns>
                      <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                      <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                      <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                      <RowStyle BackColor="White" ForeColor="#330099" />
                      <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                      <SortedAscendingCellStyle BackColor="#FEFCEB" />
                      <SortedAscendingHeaderStyle BackColor="#AF0101" />
                      <SortedDescendingCellStyle BackColor="#F6F0C0" />
                      <SortedDescendingHeaderStyle BackColor="#7E0000" />
                  </asp:GridView>
               </div>
            </div>
                    	
         </section>-->
        
    </form>
    <script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/script.js"></script>
</body>
</html>
