<%@ Page Title="" Language="C#" MasterPageFile="~/Sidebar-Master.Master" AutoEventWireup="true" CodeBehind="Manage-Criteria.aspx.cs" Inherits="EmployeEvaluation.Manage_Criteria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
              
				<h2 class="auto-style1">Manage Criteria</h2>
                    
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
                    
                    <asp:Button ID="Button3" runat="server" href="Add Criteria.aspx" class="btn btn-info" Text="Add new" Width="150px" OnClick="Button3_Click" />
                   </td>
            </tr>
            
            <tr>        
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Width="100px" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="criteriaid">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        
                    
                        <Columns>
                            <asp:TemplateField HeaderText="ID">
                                 <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("criteriaid") %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                 <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Description">
                                 <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Opretion">
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" Text="Edit" PostBackUrl="~/Edit-Designation.aspx" />
                                    <asp:Button ID="Button2" runat="server" Text="Delete" CommandName="Delete"  />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField></asp:TemplateField>
                        </Columns>
                        

                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                 </asp:GridView>
              </tr>
            
           
            <tr>
                <td class="auto-style2">
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
