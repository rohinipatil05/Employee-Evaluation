<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Sidebar-Master.Master" CodeBehind="Manage-Evaluator.aspx.cs" Inherits="EmployeEvaluation.Manage_Evaluator" %>

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
        /* Button used to open the contact form - fixed at the bottom of the page */
            .open-button {
                background-color: #555;
                color: white;
                padding: 16px 20px;
                border: none;
                cursor: pointer;
                opacity: 0.8;
                position: fixed;
                bottom:0px;
                right:auto;
                width: 280px;
            }

            /* The popup form - hidden by default */
            .form-popup {
                display: none;
                align-self:center;
                position:absolute;
                bottom: 0;
                border: 3px solid #f1f1f1;
                z-index: 9;
            }

            /* Add styles to the form container */
            .form-container {
                max-width: 300px;
                padding: 10px;
                position:center;
                height:auto;
                background-color: white;
            }

                /* Full-width input fields */
                /*.form-container {
                    width: 100%;
                    padding: 15px;
                    margin: 5px 0 22px 0;
                    border: none;
                    background: #f1f1f1;
                }*/

                    
                /* Set a style for the submit/login button */
                .form-container .btn {
                    background-color: #04AA6D;
                    color: white;
                    padding: 16px 20px;
                    border: none;
                    cursor: pointer;
                    width: 100%;
                    margin-bottom: 10px;
                    opacity: 0.8;
                }

                /* Add a red background color to the cancel button */
                .form-container .cancel {
                    background-color: red;
                }

                /* Add some hover effects to buttons */
                .form-container .btn:hover, .open-button:hover {
                    opacity: 1;
                }

    </style>
</head>
<body>
    <div class="page-content">
	
            <div class="form-v5-content">
                <div class="form-group">
  
			<form class="form-detail" action="#" method="post">
              
				<h2 class="auto-style1">Evaluator List</h2>
                    
        <table class="w-100">
           
             <tr>
                
                <td class="auto-style3">
              
                 </td>
            </tr>

            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    
                       &nbsp;</td>
            </tr>
             </table>
         
    &nbsp;<link href="roboto-font.css" rel="stylesheet" /><link href="style.css" rel="stylesheet" /><link rel="stylesheet" type="text/css" href="css/roboto-font.css"><link rel="stylesheet" type="text/css" href="fonts/font-awesome-5/css/fontawesome-all.min.css"><!-- Main Style Css --><link rel="stylesheet" href="css/style.css"/></head>
 

    
                <input id="Button1" type="button" value="Add Evaluator" onclick="openForm()" /></form>
      
                  

    </div>
            
        </div>
        </div>
    <div class="form-popup" id="myForm">
            <form action="#" class="form-container" runat="server">
                <h1>Add Evaluator</h1>

                
                <table>
                <tr>
                    <td><asp:label for="c_name" runat="server"><b>Select Employee</b></asp:label></td>

                    <td><asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td><button type="submit" class="btn">Promote To Evaluator</button></td>

                    <td><button type="button" class="btn cancel" onclick="closeForm()">Cancel</button></td>
                </tr>
                </table>

                
                
            </form>
        </div>
    <script>
        function openForm() {
                document.getElementById("myForm").style.display = "block";
            }

            function closeForm() {
                document.getElementById("myForm").style.display = "none";
            }
    </script>
    
</body>
</html>
    </asp:Content>

