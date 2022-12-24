<%@ Page Title="" Language="C#" MasterPageFile="~/Sidebar-Master.Master" AutoEventWireup="true" CodeBehind="Manage-Employee.aspx.cs" Inherits="EmployeEvaluation.Manage_Employee1" %>
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
              
				<h2 class="auto-style1">Manage Employee</h2>
                    
        <table class="w-100">
             
             <tr>
                <td class="auto-style2">
                    
                      
                </td>
                <td class="auto-style3">
                    
                    
                   </td>
            </tr>
             <tr>
                <td class="auto-style2">
                   
                     <asp:TextBox ID="txtsearch" class="form-control form-control-sm" runat="server" Font-Size="Medium" Width="420px"></asp:TextBox>
         

                    </td>
                <td class="auto-style3">
                    
                          <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />

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
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Width="100px" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="employeeid">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        
                        <Columns>
                            <asp:TemplateField HeaderText="ID">
                                 <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("employeeid") %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                 <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email">
                                 <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Designation">
                                 <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("designationid") %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender">
                                 <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Department">
                                 <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("departmentid") %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Opretion">
                                <ItemTemplate>
                                    <asp:Button ID="Button2" runat="server" Text="Delete" CommandName="Delete" OnClick="Button2_Click" />
                                    <asp:Button ID="Button4" runat="server" Text="Edit" CommandName="Edit" OnClick="Button4_Click"  />
                               
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField></asp:TemplateField>
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
