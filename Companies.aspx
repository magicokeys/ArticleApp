<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Companies.aspx.cs" Inherits="JamesArticleApp.Companies" %>

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

    
    <div class="modal fade" id="modalInsertCompanies" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" id="btnCancelCompanies" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Insert Company Info</h4>
                </div>
                <div class="modal-body">
                    <div class="row" id="divCompaniesInfo">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-12 col-sm-3">
                                    Logo
                                    <input type="text" id="iclogo" class="form-control" style="width:100%;" tabindex="1" placeholder="URL/Link of the Logo" required/>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Company Name
                                    <input type="text" id="icname" class="form-control" style="width:100%;" tabindex="2" required/>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Status
                                    <select id="icstatus" class="form-control" style="width:100%;" tabindex="3" required>
                                        <option selected disabled >Please select below</option>
                                        <option value="active">Active</option>
                                        <option value="inactive">Inactive</option>
                                    </select>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-lg-12 col-sm-3" >
                                    &nbsp;
                                    <button id="btnSubmiticCompanies" type="button" style="width: 100%;" class="btn btn-default" tabindex="5"><i class="fas fa-save"></i>&nbsp; Create Company</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <h5 class="m-l-10 f-color-red f-s-11" id=""></h5>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modalUpdateCompanies" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" id="btnCancelUpdateCompanies" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Update Company Info</h4>
                </div>
                <div class="modal-body">
                    <div class="row" id="divUpdateCompaniesInfo">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-12 col-sm-3">
                                    ID
                                    <input disabled type="text" id="ucid" class="form-control" style="width:100%;" tabindex="0"/>
                                </div>
                                <div class="col-lg-12 col-sm-3">
                                    Logo
                                    <input type="text" id="uclogo" class="form-control" style="width:100%;" tabindex="1" placeholder="URL/Link of the Logo" required/>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Company Name
                                    <input type="text" id="ucname" class="form-control" style="width:100%;" tabindex="2" required/>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Status &nbsp;&nbsp; <span id="currstatus"></span>
                                    <select id="ucstatus" class="form-control" style="width:100%;" tabindex="3" required>
                                        <option selected disabled >Please select below</option>
                                        <option value="active">Active</option>
                                        <option value="inactive">Inactive</option>
                                    </select>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-lg-12 col-sm-3" >
                                    &nbsp;
                                    <button id="btnSubmitucCompanies" type="button" style="width: 100%;" class="btn btn-default" tabindex="5"><i class="fas fa-save"></i>&nbsp; Update Company</button>
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
            <i class="fa fa-file-text"></i>&nbsp;<span><b>Companies Form</b></span>
        </div>
        <div class="panel-body">
            
            <div class="col-sm-12 p-t-15 p-l-15 p-r-30">
                <ul class="nav nav-tabs">
                    
                    <li class="active">
                        <a data-toggle="tab" href="#companiestab">Companies</a>
                    </li>
                    
                </ul>

                <div class="col-sm-12 p-l-0 p-r-0" style="margin-top: 15px;">
                    <div class="tab-content">
                        
                        <div id="companiestab" class="tab-pane fade in active table-responsive">
                            
                            <button id="btnInsertCompanies" type="button" title="Insert" style="padding: 3px 12px; margin: 10px" class="btn btn-default"><i class="fas fa-plus"></i></button>
                            <div id="divcompanies">
                                <table class="table table-bordered " id="tblcompanies" style="overflow-x: auto">
                                    <thead>
                                        <tr style="background-color: #f5f5f5; color: #070606">
                                            <th>ID</th>
                                            <th>Logo</th>
                                            <th>Name</th>
                                            <th>Status</th>
                                            
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
    
    <script>document.write('<script src="Scripts/custom/js/jsCompanies.js?v=' + (new Date()).getTime() + '"\><\/script>');</script>

</asp:Content>
