<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="JamesArticleApp.Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .stat-icon {
            line-height: 27px;
            left: 20px;
            top: 20px;
            font-size: 50px;
            border-width: 1px;
            border-style: solid;
            border-radius: 15px;
            padding: 40px 19px;
            color: #729bf3;
            text-align: center;
            cursor: pointer;
        }

            .stat-icon:hover {
                background-color: #eaebf3;
            }
    </style>

    
    <div class="modal fade" id="modalInsertUsers" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" id="btnCancelUsers" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Insert User's Info</h4>
                </div>
                <div class="modal-body">
                    <div class="row" id="divUsersInfo">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-12 col-sm-3">
                                    Firstname
                                    <input type="text" id="iufirstname" class="form-control" style="width:100%;" tabindex="1" required/>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Lastname
                                    <input type="text" id="iulastname" class="form-control" style="width:100%;" tabindex="2" required/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-sm-3">
                                    User Type
                                    <select id="iuusertype" class="form-control" style="width:100%;" tabindex="3" required>
                                        <option selected disabled >Please select below</option>
                                        <option value="writer">Writer</option>
                                        <option value="editor">Editor</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Status
                                    <select id="iustatus" class="form-control" style="width:100%;" tabindex="4" required>
                                        <option selected disabled >Please select below</option>
                                        <option value="active">Active</option>
                                        <option value="inactive">Inactive</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Username
                                    <input type="text" id="iuusername" class="form-control" style="width:100%;" tabindex="5" required/>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Password
                                    <input type="password" id="iupassword" class="form-control" style="width:100%;" tabindex="6" required/>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-lg-12 col-sm-3" >
                                    &nbsp;
                                    <button id="btnSubmitiuUsers" type="button" style="width: 100%;" class="btn btn-default" tabindex="7">
                                        <i class="fas fa-save"></i>&nbsp; Create User</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <h5 class="m-l-10 f-color-red f-s-11" id=""></h5>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modalUpdateUsers" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" id="btnCancelUpdateUsers" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Update User's Info</h4>
                </div>
                <div class="modal-body">
                    <div class="row" id="divUpdateUsersInfo">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-12 col-sm-3">
                                    ID
                                    <input disabled type="text" id="uuid" class="form-control" style="width:100%;"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-sm-3">
                                    Firstname
                                    <input type="text" id="uufirstname" class="form-control" style="width:100%;" tabindex="1" required/>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Lastname
                                    <input type="text" id="uulastname" class="form-control" style="width:100%;" tabindex="2" required/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-sm-3">
                                    User Type &nbsp;&nbsp; <span id="currusertype"></span>
                                    <select id="uuusertype" class="form-control" style="width:100%;" tabindex="3" required>
                                        <option selected disabled >Please select below</option>
                                        <option value="writer">Writer</option>
                                        <option value="editor">Editor</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Status &nbsp;&nbsp; <span id="currstatus"></span>
                                    <select id="uustatus" class="form-control" style="width:100%;" tabindex="4" required>
                                        <option selected disabled >Please select below</option>
                                        <option value="active">Active</option>
                                        <option value="inactive">Inactive</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Username
                                    <input type="text" id="uuusername" class="form-control" style="width:100%;" tabindex="5" required/>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Password
                                    <input type="text" id="uupassword" class="form-control" style="width:100%;" tabindex="6" required/>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-lg-12 col-sm-3" >
                                    &nbsp;
                                    <button id="btnSubmituuUsers" type="button" style="width: 100%;" class="btn btn-default" tabindex="7">
                                        <i class="fas fa-save"></i>&nbsp; Update User</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <h5 class="m-l-10 f-color-red f-s-11" id=""></h5>
            </div>
        </div>
    </div>
    
    <div class="panel panel-default">
        <div class="panel-heading">
            <i class="fa fa-file-text"></i>&nbsp;<span><b>Users Form</b></span>
        </div>
        <div class="panel-body">
            
            <div class="col-sm-12 p-t-15 p-l-15 p-r-30">
                <ul class="nav nav-tabs">
                    
                    <li class="active">
                        <a data-toggle="tab" href="#userstab">Users</a>
                    </li>
                    
                </ul>

                <div class="col-sm-12 p-l-0 p-r-0" style="margin-top: 15px;">
                    <div class="tab-content">
                        
                        <div id="userstab" class="tab-pane fade in active table-responsive">
                            
                            <button id="btnInsertUsers" type="button" title="Insert" style="padding: 3px 12px; margin: 10px" class="btn btn-default"><i class="fas fa-plus"></i></button>
                            <div id="divusers">
                                <table class="table table-bordered " id="tblusers" style="overflow-x: auto">
                                    <thead>
                                        <tr style="background-color: #f5f5f5; color: #070606">
                                            <th>ID</th>
                                            <th>Firstname</th>
                                            <th>Lastname</th>
                                            <th>User Type</th>
                                            <th>Status</th>
                                            <th>Username</th>
                                            <th>Password</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>

        </div>
    </div>
    
    <script>document.write('<script src="Scripts/custom/js/jsUsers.js?v=' + (new Date()).getTime() + '"\><\/script>');</script>

</asp:Content>
