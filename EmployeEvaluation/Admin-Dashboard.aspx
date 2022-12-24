<%@ Page Language="C#" MasterPageFile="~/Sidebar-Master.Master" AutoEventWireup="true" CodeBehind="Admin-Dashboard.aspx.cs" Inherits="EmployeEvaluation.Admin_Dashboard" %>
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
        <a href="EvaluationHistory(Admin).aspx"><div class="circle-tile-heading blue"><i class="fa fa-history" aria-hidden="true"></i>
   </div></a>
        <div class="circle-tile-content blue">
         <strong> EVALUATION HISTORY</strong>
          <div class="circle-tile-number "><strong>265</strong></div>
          <a class="circle-tile-footer" href="#">More Info<i class="fa fa-chevron-circle-right"></i></a>
        </div>
      </div>
    </div>
     
      
      <div class="col-lg-3 col-sm-2">
      <div class="circle-tile ">
        <a href="#"><div class="circle-tile-heading blue"><i class="fa fa-users fa-fw fa-3x"></i></div></a>
        <div class="circle-tile-content blue">
          <strong>EVALUATE EMPLOYEE </strong>
          <div class="circle-tile-number"><strong>10</strong></div>
          <a class="circle-tile-footer" href="#">More Info<i class="fa fa-chevron-circle-right"></i></a>
        </div>
      </div>
    </div>
     
     
    <div class="col-lg-3 col-sm-2">
      <div class="circle-tile ">
        <a href="Approve-Decline.aspx"><div class="circle-tile-heading blue"><i class="fa fa-users fa-fw fa-3x"></i></div></a>
        <div class="circle-tile-content blue">
          <strong>APPROVE-DECLINE</strong>
          <div class="circle-tile-number "><strong>10</strong></div>
          <a class="circle-tile-footer" href="#">More Info<i class="fa fa-chevron-circle-right"></i></a>
        </div>
      </div>
    </div>
      
      <div class="col-lg-3 col-sm-2">
      <div class="circle-tile ">
        <a href="#"><div class="circle-tile-heading blue"><i class="fa fa-users fa-fw fa-3x"></i></div></a>
        <div class="circle-tile-content blue">
         <strong> MANAGE</strong>
          <div class="circle-tile-number  "><strong>10</strong></div>
          <a class="circle-tile-footer" href="#">More Info<i class="fa fa-chevron-circle-right"></i></a>
        </div>
      </div>
    </div>
      <div class="col-lg-3 col-sm-2">
      <div class="circle-tile ">
        <a href="ViewReport(Admin).aspx"><div class="circle-tile-heading blue"><i class="fa fa-users fa-fw fa-3x"></i></div></a>
        <div class="circle-tile-content blue">
         <strong> REPORT  </strong>
          <div class="circle-tile-number  "><strong>10</strong></div>
          <a class="circle-tile-footer" href="#">More Info<i class="fa fa-chevron-circle-right"></i></a>
        </div>
      </div>
    </div>
      <div class="col-lg-3 col-sm-2">
      <div class="circle-tile ">
        <a href="#"><div class="circle-tile-heading blue"><i class="fa fa-users fa-fw fa-3x"></i></div></a>
        <div class="circle-tile-content blue">
          <strong>LOGOUT</strong>
          <div class="circle-tile-number  "><strong>10</strong></div>
          <a class="circle-tile-footer" href="#">More Info<i class="fa fa-chevron-circle-right"></i></a>
        </div>
      </div>
    </div>
  </div> 
 
  
</div>
    </form>
</body>
</html></asp:content>
