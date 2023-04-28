<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Admin.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="BackAdmin.Manage.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCnt" runat="server">
       <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">ניהול מוצרים</h1>

                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                   <div class="panel panel-default">
                        <div class="panel-heading">
                            DataTables Advanced Tables
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                               <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>קוד מוצר</th>
                                            <th>שם</th>
                                            <th>מחיר</th>
                                            <th>תמונה</th>
                                            <th>קטגוריה</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="RptProds" runat="server">
                                            
                                               <ItemTemplate>
                                                  <tr class="odd gradeX">
                                                    <td><%#Eval("Pid") %></td>
                                                    <td><%#Eval("Pname") %></td>
                                                    <td><%#Eval("Price") %></td>
                                                    <td class="center"><%#Eval("Picname") %></td>
                                                    <td class="center"><%#Eval("Cid") %></td>
                                                </tr>
                                            </ItemTemplate>
                                             
                                        </asp:Repeater>
                                          <asp:Literal ID="LtlProds" runat="server" />
                                    </tbody>
                                </table>
                            </div>
                           
                            <!-- /.table-responsive -->
                         
                        </div>
                        <!-- /.panel-body -->
                    </div>
                </div>
              
            </div>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterCnt" runat="server">
</asp:Content>