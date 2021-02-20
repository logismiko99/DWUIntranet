<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="broadcast.aspx.cs" Inherits="DWUIntranet.pgnavibartop.broadcast" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Trumbowyg/2.23.0/ui/trumbowyg.min.css" integrity="sha512-iw/TO6rC/bRmSOiXlanoUCVdNrnJBCOufp2s3vhTPyP1Z0CtTSBNbEd5wIo8VJanpONGJSyPOZ5ZRjZ/ojmc7g==" crossorigin="anonymous" />
<style>
    .dropdown bootstrap-select{
        width:50%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="card ">
                <%--                <div class="card-header ">
                  <h4 class="card-title">Navigation Pills -
                    <small class="description">Horizontal Tabs</small>
                  </h4>
                </div>--%>
                <div class="card-body ">
                    <ul class="nav nav-pills nav-pills-warning" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#Index" role="tablist">Index
                      </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#Recents" role="tablist">Recents Topics
                      </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#New" role="tablist">New Topics
                      </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#Replies" role="tablist">No Replies
                      </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#My" role="tablist">My Topics
                      </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#Profiles" role="tablist">Profiles
                      </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#Search" role="tablist">Search
                      </a>
                        </li>
                    </ul>
                    <div class="tab-content tab-space">
                        <div class="tab-pane active" id="Index">
                            Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits.

                            <br />
                            <br />
                            Dramatically visualize customer directed convergence without revolutionary ROI. Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits.

                            <br />
                            <br />
                            This is very nice.

                        </div>
                        <div class="tab-pane" id="Recents">
                            Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas.

                            <br />
                            <br />
                            Dramatically maintain clicks-and-mortar solutions without functional solutions.

                        </div>
                        <div class="tab-pane" id="New">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card ">
                                        <div class="card-header card-header-rose card-header-text">
                                            <div class="card-text">
                                                <h4 class="card-title">New Topic</h4>
                                            </div>
                                        </div>
                                        <div class="card-body ">
                                            <%--                  <form method="get" action="/" class="form-horizontal">--%>
                                            <div class="row">
                                                <label class="col-sm-2 col-form-label">Category</label>
                                                <div class="col-sm-10">
                                                    <div class="form-group">
                                                        <%--                          <input type="text" class="form-control">
                          <span class="bmd-help">A block of help text that breaks onto a new line.</span>--%>
                                                        <asp:DropDownList runat="server" class="selectpicker" data-size="7" data-style="btn btn-info btn-round btn-sm" ID="title">
<%--                                                            <asp:ListItem Text="Community Broadcast & Discussion Forum" Value="0"></asp:ListItem>
                                                            <asp:ListItem Text="Student Discussion Forum" Value="1"></asp:ListItem>--%>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-2 col-form-label">Subject</label>
                                                <div class="col-sm-10">
                                                    <div class="form-group">
                                                        <asp:TextBox class="form-control" value="" ID="txtsubject" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-2 col-form-label">Placeholder</label>
                                                <div class="col-sm-10">
                                                    <div class="form-group">
                                                        <div id="editor" class="shadow w-100 rounded border d-block"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-2 col-form-label">Attachement</label>
                                                <div class="col-sm-10">
                               <div class="fileinput fileinput-new text-center" data-provides="fileinput">
						<div class="fileinput-new thumbnail img-circle">
						  <img src="../../assets/img/placeholder.jpg" alt="...">
						</div>
						<div class="fileinput-preview fileinput-exists thumbnail img-circle"></div>
						<div>
						  <span class="btn btn-round btn-rose btn-file">
							<span class="fileinput-new">Select File</span>
							<span class="fileinput-exists">Change</span>
							<input type="file" name="..." />
						  </span>
						  <br />
						  <a href="#pablo" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
						</div>
					  </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-2 col-form-label label-checkbox">Subscribe</label>
                                                <div class="col-sm-10 checkbox-radios">
                                                    <div class="form-check">
                                                        <label class="form-check-label">
                                                            <input class="form-check-input" type="checkbox" value="">
                                                            Check this box to be notified of replies to this topic.

                                                            <span class="form-check-sign">
                                                                <span class="check"></span>
                                                            </span>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-2 col-form-label">Comment</label>
                                                <div class="col-sm-10">
                                                    <div class="form-group">
                                                        <%--                          <input type="text" class="form-control">
                          <span class="bmd-help">A block of help text that breaks onto a new line.</span>--%>
                                                        <asp:DropDownList runat="server" class="selectpicker" data-size="7" data-style="btn btn-info btn-round btn-sm" ID="DropDownList1">
                                                            <asp:ListItem Text="Allow" Value="0"></asp:ListItem>
                                                            <asp:ListItem Text="Not Allow" Value="1"></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>

                                            <%--                  </form>--%>
                                        </div>
                                        <div class="card-footer ml-auto mr-auto">
                                            <button id="btnsave" class="btn btn-rose">Save</button>
                                            <button type="submit" class="btn btn-rose">Cancel</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="Replies">
                            Completely synergize resource taxing relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas.

                            <br />
                            <br />
                            Dynamically innovate resource-leveling customer service for state of the art customer service.

                        </div>
                        <div class="tab-pane" id="My">
                            Completely synergize resource taxing relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas.

                            <br />
                            <br />
                            Dynamically innovate resource-leveling customer service for state of the art customer service.

                        </div>
                        <div class="tab-pane" id="Profiles">
                            Completely synergize resource taxing relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas.

                            <br />
                            <br />
                            Dynamically innovate resource-leveling customer service for state of the art customer service.

                        </div>
                        <div class="tab-pane" id="Search">
                            Completely synergize resource taxing relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas.

                            <br />
                            <br />
                            Dynamically innovate resource-leveling customer service for state of the art customer service.

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


  <script src="//ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Trumbowyg/2.23.0/trumbowyg.min.js" integrity="sha512-sffB9/tXFFTwradcJHhojkhmrCj0hWeaz8M05Aaap5/vlYBfLx5Y7woKi6y0NrqVNgben6OIANTGGlojPTQGEw==" crossorigin="anonymous"></script>
     <script>
         $('#editor').trumbowyg();

    </script>

   
        <script>

        $(document).ready(function () {
           
            $.ajax({
                url: 'broadcast.aspx/SaveThreads',
                method: 'POST',
                contentType: 'application/json',
                data {}
                dataType: 'json',
                success: function (data) {


                    console.log(data);
                    
                    for (var i = 0; i < data.d.length; i++) {

                        var HtmlStr = '<tr><td>' + data.d[i].EventTitle + '</td><td>' + data.d[i].FromDate + '</td><td>' + data.d[i].Venue + '</td><td>' + data.d[i].StartTime + '</td><td>' + data.d[i].EndTime + '</td></tr>';
                        $('#datatables tbody').append(HtmlStr);
                    }

                   

                }
            });

        });
    </script>
</asp:Content>
