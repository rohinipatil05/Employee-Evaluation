<%@ Page Language="C#" AutoEventWireup="false"  MasterPageFile="~/Sidebar-Master.Master" CodeBehind="Manage-department.aspx.cs" Inherits="EmployeEvaluation.adddepartment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	
	<title>Employee Evaluation</title>
	<!-- Mobile Specific Metas -->
	
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
            width: 636px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 513px;
        }
    </style>
    </head>
    
    <body class="form-v5"><div class="page-content">
		<div class="form-v5-content">
            			<form class="form-detail" action="#" method="post" runat="server">
              
				<h2 class="auto-style1">Add Department</h2>
                    
        <table class="w-100">
            <tr>        
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Department Id" Font-Size="Medium"></asp:Label><asp:Label ID="Label6" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" class="form-control form-control-sm" runat="server" Font-Size="Medium" Width="390px"></asp:TextBox>
                </td> 
            </tr>
            
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Department Name" Font-Size="Medium"></asp:Label><asp:Label ID="Label10" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" class="form-control form-control-sm" runat="server" Font-Size="Medium" Width="390px"></asp:TextBox>
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
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" class="btn btn-info" Text="Add Department" BackColor="#99CCFF" Width="156px" />

                    

                 </td>
            </tr>

            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    
                       &nbsp;</td>
            </tr>
             </table>
                            </form>
     <meta charset="utf-8">   
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
    <link href="Roboto/" rel="stylesheet" /></link>
    <script src="fontawesome-all.js"></script>
    <link href="fontawesome-all.min"  rel="stylesheet"/>
    
    &nbsp;<link href="roboto-font.css" rel="stylesheet" /><link href="style.css" rel="stylesheet" /><link rel="stylesheet" type="text/css" href="css/roboto-font.css"/><link rel="stylesheet" type="text/css" href="fonts/font-awesome-5/css/fontawesome-all.min.css"/><!-- Main Style Css --><link rel="stylesheet" href="css/style.css"/></head>





    </div></div>
   
</body>
    </html>
    </asp:Content>
