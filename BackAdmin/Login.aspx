<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BackAdmin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>התחברות למערכת</title>
    
    <!-- Bootstrap Core CSS -->
    <link href="manage/css/rtl/bootstrap.min.css" rel="stylesheet"/>
    
    <!-- not use this in ltr -->
    <link href="manage/css/rtl/bootstrap.rtl.css" rel="stylesheet" />

    <!-- MetisMenu CSS -->
    <link href="manage/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="manage/css/plugins/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="manage/css/rtl/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="manage/css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="manage/css/font-awesome/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
     <link href="manage/css/rtl/custom.css" rel="stylesheet">
</head>
<body>

      <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">נא התחבר בבקשה....</h3>
                    </div>
                    <div class="panel-body">
                         <form id="form1" runat="server">
        <div>
            <fieldset>
                                <div class="form-group">
                                 
                                  
                                    <asp:TextBox ID="TxtUser" runat="server" placeholder="נא הזן שם משתמש" class="form-control" textmode="Email"  />                                   
                                    <asp:RequiredFieldValidator ID="RqUser" runat="server" ErrorMessage="יש להזין שם משתמש" ControlToValidate="TxtUser" />
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="TxtPass" runat="server" placeholder="נא הזן סיסמה" class="form-control" TextMode="Password" />                                   
                                    <asp:RequiredFieldValidator ID="RqPass" runat="server" ControlToValidate="TxtPass" ErrorMessage="יש להזין סיסמה" />
                                </div>                              
                                <!-- Change this to a button or input when using this as a form -->
                                <asp:Button ID="BtnReg" runat="server" Text="התחבר" class="btn btn-lg btn-success btn-block" onclick="BtnReg_Click" />
                              
                            </fieldset>
        </div>
    </form>
                     
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery Version 1.11.0 -->
    <script src="manage/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="manage/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="manage/js/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="manage/js/sb-admin-2.js"></script>
   
   
</body>
</html>
