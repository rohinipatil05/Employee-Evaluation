<%@ Page Title="" Language="C#" MasterPageFile="~/Sidebar-Master.Master" AutoEventWireup="true" CodeBehind="Manage-Department.aspx.cs" Inherits="EmployeEvaluation.Manage_Department" %>
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
            width: 513px;
        }
    </style>
</head>
   <body>
    <div class="page-content">
	
            <div class="form-v5-content">
                <div class="form-group">
  
			<form class="form-detail" action="#" method="post" runat="server">
              
				<h2 class="auto-style1">Manage Department</h2>
                    
        <table class="w-100">
             
             <tr>
                <td class="auto-style2">
                    
                      
                </td>
                <td class="auto-style3">
                    
                    
                   </td>
            </tr>
             <tr>
                <td class="auto-style2">
                    
                      
                </td>
                <td class="auto-style3">
                    
                    <asp:Button ID="Button3" runat="server" href="Add Designation.aspx" class="btn btn-info" Text="Add new" Width="150px" OnClick="Button3_Click" />
                   </td>
            </tr>
            
           
            <tr>
                <td class="auto-style2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="departmentid" DataSourceID="SqlDataSource1" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="departmentid" HeaderText="departmentid" InsertVisible="False" ReadOnly="True" SortExpression="departmentid" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeEvaluationConnectionString3 %>" DeleteCommand="DELETE FROM [TDepartment] WHERE [departmentid] = @departmentid" InsertCommand="INSERT INTO [TDepartment] ([name], [date]) VALUES (@name, @date)" SelectCommand="SELECT * FROM [TDepartment]" UpdateCommand="UPDATE [TDepartment] SET [name] = @name, [date] = @date WHERE [departmentid] = @departmentid">
                        <DeleteParameters>
                            <asp:Parameter Name="departmentid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter DbType="Date" Name="date" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter DbType="Date" Name="date" />
                            <asp:Parameter Name="departmentid" Type="Int32" />
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
