<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Sidebar-Master.Master"  CodeBehind="Add Evaluator.aspx.cs" Inherits="EmployeEvaluation.Add_Evaluator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html>
<head>
	
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
    </style>
</head>
<body>
    <div class="page-content">
	
            <div class="form-v5-content">
                <div class="form-group">
  
			<form class="form-detail" action="#" method="post" runat="server">
              
				<h2 class="auto-style1">Add Evaluator</h2>
                    
        <table class="w-100">
            
            
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Select Employee" Font-Size="Medium"></asp:Label><asp:Label ID="Label10" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">
                    
                     <asp:DropDownList ID="DropDownList2" runat="server" class="form-control form-control-sm" Width="430px" Height="30px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                    </asp:DropDownList>
                    </td>
                
            </tr>
             
           
             <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   

                 </td>
            </tr>

            <tr>
                <td class="auto-style2">
                    <asp:Label ID="L1" runat="server" Text="Label"></asp:Label>
                    
                    &nbsp;
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeEvaluationConnectionString %>" SelectCommand="SELECT [name] FROM [TEmployee] WHERE ([role] = @role)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="employee" Name="role" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style3"> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" class="btn btn-info" Text="Promote To Evaluator" BackColor="#99CCFF" Width="210px" OnClick="Button2_Click" />
               
                    &nbsp;&nbsp;&nbsp;
                    
                       &nbsp;</td>
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

