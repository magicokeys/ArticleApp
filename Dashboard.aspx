<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="JamesArticleApp.Dashboard" %>

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

    
    <div class="modal fade" id="modalInsertArticles" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" id="btnCancelArticles" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Insert Articles Info</h4>
                </div>
                <div class="modal-body">
                    <div class="row" id="divArticlesInfo">
                        <div class="col-lg-12">
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Company
                                    <input type="text" id="iacompany" class="form-control" style="width:100%;" tabindex="1"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-sm-3">
                                    Image URL
                                    <input type="text" id="iaimageurl" class="form-control" style="width:100%;" tabindex="2"/>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Title
                                    <input type="text" id="iatitle" class="form-control" style="width:100%;" tabindex="3"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-sm-3">
                                    Link
                                    <input type="text" id="ialink" class="form-control" style="width:100%;" tabindex="4"/>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Date
                                    <input type="date" id="iacreatedat" class="form-control" style="width:100%;" tabindex="5"/>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Article Content
                                    <input type="text" id="iaarticlecontent" class="form-control" style="width:100%;" tabindex="6"/>
                                </div>
                            </div>
                            
                            
                            <div class="row">
                                <div class="col-lg-12 col-sm-3" >
                                    &nbsp;
                                    <button id="btnSubmitiaArticles" type="button" style="width: 100%;" class="btn btn-default" tabindex="7">
                                        <i class="fas fa-save"></i>&nbsp; Create Article

                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <h5 class="m-l-10 f-color-red f-s-11" id=""></h5>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modalUpdateArticles" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" id="btnCancelUpdateArticles" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Update Article Info</h4>
                </div>
                <div class="modal-body">
                    <div class="row" id="divUpdateArticleInfo">
                        <div class="col-lg-12">
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Article ID
                                    <input disabled type="text" id="uaid" class="form-control" style="width:100%;" tabindex="1"/>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Company
                                    <input type="text" id="uacompany" class="form-control" style="width:100%;" tabindex="1"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-sm-3">
                                    Image URL
                                    <input type="text" id="uaimageurl" class="form-control" style="width:100%;" tabindex="2"/>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Title
                                    <input type="text" id="uatitle" class="form-control" style="width:100%;" tabindex="3"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-sm-3">
                                    Link
                                    <input type="text" id="ualink" class="form-control" style="width:100%;" tabindex="4"/>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Date
                                    <input type="date" id="uacreatedat" class="form-control" style="width:100%;" tabindex="5"/>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-lg-12 col-sm-3">
                                    Article Content
                                    <input type="text" id="uaarticlecontent" class="form-control" style="width:100%;" tabindex="6"/>
                                </div>
                            </div>
                            
                            
                            <div class="row">
                                <div class="col-lg-12 col-sm-3" >
                                    &nbsp;
                                    <button id="btnSubmituaArticles" type="button" style="width: 100%;" class="btn btn-default" tabindex="7">
                                        <i class="fas fa-save"></i>&nbsp; Update Article

                                    </button>
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
            <i class="fa fa-file-text"></i>&nbsp;<span><b>Articles Form</b></span>
        </div>
        <div class="panel-body">
            
            <div class="col-sm-12 p-t-15 p-l-15 p-r-30">
                <ul class="nav nav-tabs">
                    
                    <li class="active">
                        <a data-toggle="tab" href="#articlestab">Articles</a>
                    </li>
                    
                </ul>

                <div class="col-sm-12 p-l-0 p-r-0" style="margin-top: 15px;">
                    <div class="tab-content">
                        
                        <div id="articlestab" class="tab-pane fade in active table-responsive">
                            
                            <button id="btnInsertArticles" type="button" title="Insert" style="padding: 3px 12px; margin: 10px" class="btn btn-default"><i class="fas fa-plus"></i></button>
                            <div id="divarticles">
                                <table class="table table-bordered " id="tblarticles" style="overflow-x: auto">
                                    <thead>
                                        <tr style="background-color: #f5f5f5; color: #070606">
                                            <th>ID</th>
                                            <th>Image</th>
                                            <th>Title</th>
                                            <th>Link</th>
                                            <th>Created At</th>
                                            <th>Content</th>
                                            <th>Status</th>
                                            <th>Writer</th>
                                            <th>Editor</th>
                                            <th>Company</th>
                                            
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
    
    <script>document.write('<script src="Scripts/custom/js/jsDashboard.js?v=' + (new Date()).getTime() + '"\><\/script>');</script>

</asp:Content>
