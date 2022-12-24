<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EmployeEvaluation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="employeeid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="employeeid" HeaderText="employeeid" InsertVisible="False" ReadOnly="True" SortExpression="employeeid" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="designationid" HeaderText="designationid" SortExpression="designationid" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                    <asp:BoundField DataField="departmentid" HeaderText="departmentid" SortExpression="departmentid" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeEvaluationConnectionString2 %>" DeleteCommand="DELETE FROM [TEmployee] WHERE [employeeid] = @employeeid" InsertCommand="INSERT INTO [TEmployee] ([name], [email], [designationid], [gender], [departmentid], [password], [date]) VALUES (@name, @email, @designationid, @gender, @departmentid, @password, @date)" SelectCommand="SELECT * FROM [TEmployee]" UpdateCommand="UPDATE [TEmployee] SET [name] = @name, [email] = @email, [designationid] = @designationid, [gender] = @gender, [departmentid] = @departmentid, [password] = @password, [date] = @date WHERE [employeeid] = @employeeid">
            <DeleteParameters>
                <asp:Parameter Name="employeeid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="designationid" Type="Int32" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="departmentid" Type="Int32" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="date" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="designationid" Type="Int32" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="departmentid" Type="Int32" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="employeeid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
