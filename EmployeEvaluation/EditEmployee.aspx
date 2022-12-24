<%@ Page Title="" Language="C#" MasterPageFile="~/Sidebar-Master.Master" AutoEventWireup="true" CodeBehind="EditEmployee.aspx.cs" Inherits="EmployeEvaluation.EditEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
<head >
	
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
            width: 173px;
        }
        .auto-style6 {
        height: 575px;
        width: 611px;
    }
    </style>
</head>
 <body>
    <div class="page-content">
	
            <div class="form-v5-content">
                <div class="form-group">
  
			<form class="form-detail" action="#" method="post" runat="server">
              
				<h2 class="auto-style1">Edit Employee</h2>
                    
        <table class="auto-style6">
            <tr>        
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text=" Name" Font-Size="Medium"></asp:Label><asp:Label ID="Label6" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="nametxt" class="form-control form-control-sm" runat="server" Font-Size="Medium" Width="420px"></asp:TextBox>
                </td> 
            </tr>
             <tr>        
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Email" Font-Size="Medium"></asp:Label><asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="etxt" class="form-control form-control-sm" runat="server" Font-Size="Medium" Width="420px"></asp:TextBox>
                </td> 
            </tr>
             <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Designation" Font-Size="Medium"></asp:Label><asp:Label ID="Label7" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">
                    
                     <asp:DropDownList ID="DropDownList1" runat="server" class="form-control form-control-sm" Width="430px" Height="30px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    </td>
                
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Gender" Font-Size="Medium"></asp:Label><asp:Label ID="Label10" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">
                    
                     <asp:DropDownList ID="DropDownList2" runat="server" class="form-control form-control-sm" Width="430px" Height="30px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                         <asp:ListItem>Male</asp:ListItem>
                         <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                
            </tr>
             
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Department" Font-Size="Medium"></asp:Label><asp:Label ID="Label9" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">
                    
                     <asp:DropDownList ID="DropDownList3" runat="server" class="form-control form-control-sm" Width="430px" Height="30px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                    </asp:DropDownList>
                    </td>
                
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label11" runat="server" Text="Role" Font-Size="Medium"></asp:Label><asp:Label ID="Label12" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">
                    
                     <asp:DropDownList ID="DropDownList4" runat="server" class="form-control form-control-sm" Width="430px" Height="30px" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                         <asp:ListItem>Admin</asp:ListItem>
                         <asp:ListItem>Evaluator</asp:ListItem>
                         <asp:ListItem>Employee</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                
            </tr>
               
             <tr>
                <td class="auto-style2">
                    <asp:Label ID="L1" runat="server"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="btnedit" runat="server" class="btn btn-secondary" Text="Update" Width="90px" OnClick="btnedit_Click"  />               
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="close" runat="server" class="btn btn-info" Text="Close" BackColor="#99CCFF" Width="90px" OnClick="close_Click"  />

                    

                 </td>
            </tr>
            

            

            
             </table>
         
    &nbsp;<link href="roboto-font.css" rel="stylesheet" /><link href="style.css" rel="stylesheet" /><link rel="stylesheet" type="text/css" href="css/roboto-font.css"><link rel="stylesheet" type="text/css" href="fonts/font-awesome-5/css/fontawesome-all.min.css"><!-- Main Style Css --><link rel="stylesheet" href="css/style.css"/></head>
 

    
    </form>
      
                  

    </div>
            
        </div>
        </div>
    
</body>
</html>
</asp:Content>
