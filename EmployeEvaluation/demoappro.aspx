<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind ="demoappro.aspx.cs" Inherits="EmployeEvaluation.demoappro" %>
<!DOCTYPE html>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	
	<title>Employee Evaluation</title>
   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeEvaluationConnectionString %>" DeleteCommand="DELETE FROM [TEvaluation] WHERE [evaluationid] = @evaluationid" InsertCommand="INSERT INTO [TEvaluation] ([evaluationid], [employeeid], [evaluatorid], [date], [criteriaid], [rating], [remark], [status]) VALUES (@evaluationid, @employeeid, @evaluatorid, @date, @criteriaid, @rating, @remark, @status)" SelectCommand="SELECT evaluationid, employeeid, evaluatorid,date,criteriaid,rating ,remark FROM TEvaluation WHERE (status= 'Decline')
" UpdateCommand="UPDATE [TEvaluation] SET [employeeid] = @employeeid, [evaluatorid] = @evaluatorid, [date] = @date, [criteriaid] = @criteriaid, [rating] = @rating, [remark] = @remark, [status] = @status WHERE [evaluationid] = @evaluationid">
                <DeleteParameters>
                    <asp:Parameter Name="evaluationid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="evaluationid" Type="Int32" />
                    <asp:Parameter Name="employeeid" Type="Int32" />
                    <asp:Parameter Name="evaluatorid" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="date" />
                    <asp:Parameter Name="criteriaid" Type="Int32" />
                    <asp:Parameter Name="rating" Type="Decimal" />
                    <asp:Parameter Name="remark" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="employeeid" Type="Int32" />
                    <asp:Parameter Name="evaluatorid" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="date" />
                    <asp:Parameter Name="criteriaid" Type="Int32" />
                    <asp:Parameter Name="rating" Type="Decimal" />
                    <asp:Parameter Name="remark" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                    <asp:Parameter Name="evaluationid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" ForeColor="#3333CC" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="evaluationid" HeaderText="evaluationid" />
                    <asp:BoundField DataField="employeeid" HeaderText="employeeid" />
                    <asp:BoundField DataField="evaluatorid" HeaderText="evaluatorid" />
                    <asp:BoundField DataField="date" HeaderText="date" />
                    <asp:BoundField DataField="criteriaid" HeaderText="criteriaid" />
                    <asp:BoundField DataField="rating" HeaderText="rating" />
                    <asp:BoundField DataField="remark" HeaderText="remark" />
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
        </div>
        <asp:Label ID="L3" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
    </form>
</body>
</html>
