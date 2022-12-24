<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMaster.Master" AutoEventWireup="true" CodeBehind="EmployeeDashboard.aspx.cs" Inherits="EmployeEvaluation.EmployeeDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!DOCTYPE html>

    <html>
<head>
    
    
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="Style-dashboard.css"  type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">

<!------ Include the above in your HEAD tag ---------->
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        

<div class="container bootstrap snippet">
  <div class="row"><br /><br /><br /><br /><br />
 
    <div class="col-lg-3 col-sm-2">
      <div class="circle-tile ">
        <a href="ViewReports.aspx"><div class="circle-tile-heading blue"><i class="fa fa-users fa-fw fa-3x"></i></div></a>
        <div class="circle-tile-content blue">
           <strong>REPORTS</strong>
          <div class="circle-tile-number "><strong>10</strong></div>
       <a class="circle-tile-footer" href="ViewReports.aspx">More Info<i class="fa fa-chevron-circle-right"></i></a>
        </div>
      </div>
    </div>
      
      <div class="col-lg-3 col-sm-2">
      <div class="circle-tile ">
        <a href="Awards-Rewards.aspx"><div class="circle-tile-heading blue"><i class="fa fa-users fa-fw fa-3x"></i></div></a>
        <div class="circle-tile-content blue">
           <strong>AWARDS/REWARD</strong>
          <div class="circle-tile-number "><strong>15</strong></div>
        <a class="circle-tile-footer" href="Awards-Rewards.aspx">More Info<i class="fa fa-chevron-circle-right"></i></a>
        </div>
      </div>
    </div>
      
      <div class="col-lg-3 col-sm-2">
      <div class="circle-tile ">
        <a href="#"><div class="circle-tile-heading blue"><i class="fa fa-users fa-fw fa-3x"></i></div></a>
           <div class="circle-tile-content blue">
         <strong>LOGOUT</strong>
          <div class="circle-tile-number "><strong>10</strong></div>
        <a class="circle-tile-footer" href="Awards-Rewards.aspx">More Info<i class="fa fa-chevron-circle-right"></i></a>
           </div>
      </div>
    </div>
  </div> 
</div> 
  

    </form>
</body>
</html>
</asp:Content>

