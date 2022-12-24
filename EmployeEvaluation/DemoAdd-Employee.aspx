<%@ Page Language="C#"  AutoEventWireup="true"  MasterPageFile="~/Sidebar-Master.Master" CodeBehind="DemoAdd-Employee.aspx.cs" Inherits="EmployeEvaluation.Manage_Employee" %>
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
            width: 173px;
        }
    </style>
</head>
 <body>
    <div class="page-content">
	
            <div class="form-v5-content">
                <div class="form-group">
  
			<form class="form-detail" action="#" method="post" runat="server">
              
				<h2 class="auto-style1">Add Employee</h2>
                    
        <table class="w-100">
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
                    
                     <asp:DropDownList ID="DropDownList1" runat="server" class="form-control form-control-sm" Width="430px" Height="30px">
                    </asp:DropDownList>
                    </td>
                
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Gender" Font-Size="Medium"></asp:Label><asp:Label ID="Label10" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">
                    
                     <asp:DropDownList ID="DropDownList2" runat="server" class="form-control form-control-sm" Width="430px" Height="30px">
                    </asp:DropDownList>
                    </td>
                
            </tr>
             
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Department ID" Font-Size="Medium"></asp:Label><asp:Label ID="Label9" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">
                    
                     <asp:DropDownList ID="DropDownList3" runat="server" class="form-control form-control-sm" Width="430px" Height="30px">
                    </asp:DropDownList>
                    </td>
                
            </tr>
                <td class="auto-style2">
                    <asp:Label ID="Label13" runat="server" Text="Date" Font-Size="Medium"></asp:Label><asp:Label ID="Label14" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="datetxt" class="form-control form-control-sm" runat="server" Font-Size="Medium" Width="420px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    
                    </td>
                <td class="auto-style3">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="55px" ImageUrl="~/calender1.png" Width="84px" OnClick="ImageButton1_Click" />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="141px" Width="184px" BorderStyle="Solid" CellSpacing="1" NextPrevFormat="ShortMonth" OnSelectionChanged="Calendar1_SelectionChanged">
                        <DayHeaderStyle Font-Bold="True" Height="8pt" Font-Size="8pt" ForeColor="#333333" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" Font-Bold="True" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" Font-Bold="True" Font-Size="12pt" ForeColor="White" BorderStyle="Solid" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                    </td>
            </tr>
             <tr>
                <td class="auto-style2">
                    <asp:Label ID="L1" runat="server" Text="Label"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="btnsub" runat="server" class="btn btn-secondary" Text="Submit" Width="90px" OnClick="btnsub_Click" />               
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnreset" runat="server" class="btn btn-info" Text="Reset" BackColor="#99CCFF" Width="90px" OnClick="btnreset_Click" />

                    

                 </td>
            </tr>
            <tr>
                <td class="auto-style2">
                     <asp:Button ID="btnsearch" runat="server" class="btn btn-info" Text="Search" BackColor="#99CCFF" Width="90px" OnClick="btnsearch_Click" />

                    </td>
                <td class="auto-style3">
                    
                   
                     <asp:TextBox ID="txtsearch" class="form-control form-control-sm" runat="server" Font-Size="Medium" Width="420px"></asp:TextBox>
               

                 </td>
            </tr>

            <tr>
                <td colspan="2">
                     &nbsp;</td>
            </tr>

            <tr>
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" BorderWidth="1px" DataKeyNames="EmpID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="7" ShowFooter="True" OnRowDeleting="GridView1_RowDeleting1">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="ID">
                            <ItemTemplate>
                                <asp:Label ID="Lid" runat="server" Text='<%# Eval("EmpID") %>' Font-Size="15px" Width="10px"></asp:Label>
                            </ItemTemplate>
                                </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                <asp:Label ID="Lname" runat="server" Text='<%# Eval("Name") %>' Font-Size="15px"></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email">
                                <ItemTemplate>
                                <asp:Label ID="Lemail" runat="server" Text='<%# Eval("Email") %>' Font-Size="15px"></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DesignationID"></asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender"></asp:TemplateField>
                            <asp:TemplateField HeaderText="DepartmentId"></asp:TemplateField>
                            <asp:TemplateField HeaderText="Date">
                                <ItemTemplate>
                                <asp:Label ID="Ldate" runat="server" Text='<%# Eval("Date") %>' Font-Size="15px"></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Opretion">
                            <ItemTemplate>
                                

                                <asp:Button ID="edit" runat="server" CommandName="Edit" Text="Edit" class="btn btn-info" Width="50px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="delete" runat="server" CommandName="Delete" Text="Delete" class="btn btn-info" Width="50px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
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
