<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Sidebar-Master.Master" CodeBehind="Manage Evaluator.aspx.cs" Inherits="EmployeEvaluation.Manage_Evaluator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

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
            width: 513px;
        }
    </style>
</head>
<body>
    <div class="page-content">
	
            <div class="form-v5-content">
                <div class="form-group">
  
			<form class="form-detail" action="#" method="post" runat="server">
              
				<h2 class="auto-style1">Evaluators</h2>
                    
        <table class="w-100">
           
             <tr>
                
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                  
                    <asp:Button ID="Button3" runat="server" class="btn btn-info" Text="Add New" BackColor="#99CCFF" Width="90px" OnClick="Button3_Click" />


                 </td>
            </tr>

            <tr>
                <td class="auto-style2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="employeeid" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" />
                            <asp:BoundField DataField="employeeid" HeaderText="employeeid" InsertVisible="False" ReadOnly="True" SortExpression="employeeid" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        </Columns>
                    </asp:GridView>
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeEvaluationConnectionString %>" DeleteCommand="UPDATE [TEmployee] SET [role] = 'employee' WHERE [employeeId] = @employeeId" SelectCommand="SELECT [employeeId], [name] FROM [TEmployee] WHERE ([role] = @role)" InsertCommand="INSERT INTO [TEmployee] ([name]) VALUES (@name)" UpdateCommand="UPDATE [TEmployee] SET [name] = @name WHERE [employeeId] = @employeeId" >
                        <DeleteParameters>
                            <asp:Parameter Name="original_employeeid" Type="Int32" />
                            <asp:Parameter Name="original_name" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="name" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" DefaultValue="evaluator" Name="role" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="original_employeeid" Type="Int32" />
                            <asp:Parameter Name="original_name" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
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

