<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BackAdmin.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>הרשמה למערכת</title>
    
    <!-- Bootstrap Core CSS -->
    <link href="Manage/css/rtl/bootstrap.min.css" rel="stylesheet"/>
    
    <!-- not use this in ltr -->
    <link href="Manage/css/rtl/bootstrap.rtl.css" rel="stylesheet" />

    <!-- MetisMenu CSS -->
    <link href="Manage/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="Manage/css/plugins/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="Manage/css/rtl/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="Manage/css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="Manage/css/font-awesome/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
     <link href="Manage/css/rtl/custom.css" rel="stylesheet">
</head>
<body>
      <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">הרשמה למערכת</h3>
                    </div>
                    <div class="panel-body">
                         <form id="form1" runat="server">
                         <div class="form-group">
                            <label>שם פרטי</label>
                             <asp:TextBox ID="TxtFname" class="form-control" runat="server" placeholder="נא הזן שם פרטי " />
                          </div>
                         <div class="form-group">
                            <label>שם משפחה</label>
                             <asp:TextBox ID="TxtLname" class="form-control" runat="server" placeholder="נא הזן שם משפחה " />
                          </div>
                         <div class="form-group">
                            <label>גיל</label>
                             <asp:TextBox ID="TxtAge" class="form-control" runat="server" placeholder="נא הזן את גילך " />
                             <asp:RangeValidator ID="RgAge" runat="server" ControlToValidate="TxtAge" ErrorMessage="ההרשמה היא מגילאי 18 ומעלה" MinimumValue="18" MaximumValue="120" Type="Integer" />
                          </div>
                             <div class="form-group">
                            <label>מספר טלפון</label>
                             <asp:TextBox ID="TxtPhone" class="form-control" runat="server" placeholder="נא הזן טלפון " />
                           <asp:RegularExpressionValidator ID="RgPhone" runat="server" ErrorMessage="טלפון אינו תקין" ValidationExpression="05[0-9]-[0-9]{7}" ControlToValidate="TxtPhone" />
                          </div>
                         <div class="form-group">
                            <label>שם משתמש</label>
                             <asp:TextBox ID="TxtUser" class="form-control" runat="server" placeholder="נא הזן שם משתמש " TextMode="Email" />
                             <asp:RequiredFieldValidator ID="RqUser" runat="server" ControlToValidate="TxtUser" Text="*" ForeColor="red" ErrorMessage="שם משתמש הוא חובה" />
                             <asp:RegularExpressionValidator ID="RgEmail" runat="server" placeholder="מייל לא תקין" ControlToValidate="TxtUser" ValidationExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?" />
                          </div>
                        <div class="form-group">
                            <label>סיסמה</label>
                              <asp:TextBox ID="TxtPass" runat="server" placeholder="נא הזן סיסמה" class="form-control" TextMode="Password" />                                   
                         <asp:RequiredFieldValidator ID="RqPass" runat="server" ControlToValidate="TxtPass" ErrorMessage="יש להזין סיסמה" />
                        </div>
                        <div class="form-group">
                            <label>אימות סיסמה</label>
                              <asp:TextBox ID="TxtPassConf" runat="server" placeholder="נא הזן סיסמה שנית" class="form-control" TextMode="Password" />                                   
                            <asp:CompareValidator ID="CmPass" runat="server" ControlToValidate="TxtPassConf" ErrorMessage="סיסמה ואימות סיסמה אינם תואמים" ControlToCompare="TxtPass"  />
                        </div>   
                        
                               <asp:Button ID="BtnReg" runat="server" Text="הרשמה" class="btn btn-lg btn-success btn-block" OnClick="btnSubmit_Click" />
                              <div class="form-group">
                               
                                    <asp:ValidationSummary ID="VsReg" runat="server" DisplayMode="List" ShowMessageBox="true" />
                              
                                  
                             </div>   
                         </form>
                     
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery Version 1.11.0 -->
    <script src="Manage/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="Manage/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="Manage/js/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="Manage/js/sb-admin-2.js"></script>
   
   
</body>
</html>
