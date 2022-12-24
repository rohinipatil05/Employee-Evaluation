<%@ Page Title="" Language="C#" MasterPageFile="~/EvaluatorMaster.Master" AutoEventWireup="true" CodeBehind="EvaluateEmployee.aspx.cs" Inherits="EmployeEvaluation.EvaluateEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>




<html>
<head >
    
	<title>Employee Evaluation</title>
	<!-- Mobile Specific Metas -->

	<!-- Font-->
   
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
    </style>
    </head>
   <body>
       <div class="page-content">
		<div class="form-v5-content">

			<form class="form-detail" action="#" method="post" runat="server">
           
				<h2 class="auto-style1">Evaluation Form</h2>
                    
        <table class="w-100">
            <tr>        
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Select Emloyee" Font-Size="Medium"></asp:Label><asp:Label ID="Label6" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">
                   <asp:DropDownList ID="DropDownList1" runat="server" class="form-control form-control-sm" Width="430px" Height="30px">
                    </asp:DropDownList> 
                    &nbsp;</td> 
            </tr>
            
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Select Criteria" Font-Size="Medium"></asp:Label><asp:Label ID="Label10" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList2" runat="server" class="form-control form-control-sm" Width="430px" Height="30px">
                    </asp:DropDownList>
                </td>
            </tr>
                <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Rating" Font-Size="Medium"></asp:Label><asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control form-control-sm" Width="413px"></asp:TextBox>
                </td>
            </tr>
            
             <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Remark" Font-Size="Medium"></asp:Label><asp:Label ID="Label9" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control form-control-sm" Width="413px" Height="64px"></asp:TextBox>
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
                    <asp:Label ID="L1" runat="server" Text="Label"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" class="btn btn-info" Text="Submit" BackColor="#99CCFF" Width="90px" OnClick="Button2_Click" />

                    

                 </td>
            </tr>

            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    
                       &nbsp;</td>
            </tr>
             </table>
          

 </form></div>
<meta charset="utf-8">
      	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
                     &nbsp;<link href="roboto-font.css" rel="stylesheet" /><link href="style.css" rel="stylesheet" /><link rel="stylesheet" type="text/css" href="css/roboto-font.css"/><link rel="stylesheet" type="text/css" href="fonts/font-awesome-5/css/fontawesome-all.min.css"/><!-- Main Style Css --><link rel="stylesheet" href="css/style.css"/></head>
 <link href="Roboto/"  rel="stylesheet"/>
    <script src="fontawesome-all.js"></script>
    <link href="fontawesome-all.min"  rel="stylesheet"/>

    </div>
   
</body>
</html>

</asp:Content>
