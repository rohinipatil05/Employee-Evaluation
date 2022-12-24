<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeEvaluation.Login" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	
	<title>Employee Evaluation</title>
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
            width: 581px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 513px;
        }
        .auto-style4 {
            width: 100%;
            height: 39px;
        }
        .auto-style5 {
            width: 513px;
            height: 39px;
        }
    </style>
</head>
   <body class="form-v5">
    <div class="page-content">
	
            <div class="form-v5-content">
                <div class="form-group">
  
			<form class="form-detail" action="#" method="post" runat="server">
              
				<h2 class="auto-style1">Login</h2>
                    
        <table class="w-100">
            <tr>        
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Username" Font-Size="Medium"></asp:Label><asp:Label ID="Label6" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" class="form-control form-control-sm" runat="server" Font-Size="Medium" Width="420px"></asp:TextBox>
                </td> 
            </tr>
            
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Password" Font-Size="Medium"></asp:Label><asp:Label ID="Label10" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" class="form-control form-control-sm" runat="server" Font-Size="Medium" Width="420px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" class="btn btn-secondary" Text="Cancel" Width="90px" /> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
             
                    <asp:Button ID="Button3" runat="server" Text="SignIn" class="btn btn-info" BackColor="#99CCFF" Width="90px"  />

                 </td>
            </tr>

            <tr>
                <td class="auto-style4">
                    </td>
                <td class="auto-style5">
                    
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                       &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Red" NavigateUrl="~/ResetPassword.aspx">Reset Password</asp:HyperLink></td>
            </tr>
             </table>
         
    &nbsp;<link href="roboto-font.css" rel="stylesheet" /><link href="style.css" rel="stylesheet" /><link rel="stylesheet" type="text/css" href="css/roboto-font.css"/><link rel="stylesheet" type="text/css" href="fonts/font-awesome-5/css/fontawesome-all.min.css"/><!-- Main Style Css --><link rel="stylesheet" href="css/style.css"/>
 

    
    </form>
      
                  

    </div>
            
        </div>
        </div>
    
</body>
</html>

