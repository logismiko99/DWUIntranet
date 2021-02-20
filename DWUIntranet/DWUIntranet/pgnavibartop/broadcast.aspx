<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="broadcast.aspx.cs" Inherits="DWUIntranet.pgnavibartop.broadcast" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                            <asp:DropDownList runat="server" class="selectpicker" data-size="7" data-style="btn btn-info btn-round btn-sm" ID="category">
                                <asp:ListItem Text="Category" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Staff Only" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Staff and Student" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Coporate" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <label class="col-sm-2 col-form-label">Password</label>
                      <div class="col-sm-10">
                        <div class="form-group">
                          <input type="password" class="form-control">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <label class="col-sm-2 col-form-label">Placeholder</label>
                      <div class="col-sm-10">
                        <div class="form-group">
                          <input type="text" class="form-control" placeholder="placeholder">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <label class="col-sm-2 col-form-label">Disabled</label>
                      <div class="col-sm-10">
                        <div class="form-group">
                          <input type="text" class="form-control" value="Disabled input here.." disabled>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <label class="col-sm-2 col-form-label">Static control</label>
                      <div class="col-sm-10">
                        <div class="form-group">
                          <p class="form-control-static">hello@creative-tim.com</p>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <label class="col-sm-2 col-form-label label-checkbox">Checkboxes and radios</label>
                      <div class="col-sm-10 checkbox-radios">
                        <div class="form-check">
                          <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" value=""> First Checkbox
                            <span class="form-check-sign">
                              <span class="check"></span>
                            </span>
                          </label>
                        </div>
                        <div class="form-check">
                          <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" value=""> Second Checkbox
                            <span class="form-check-sign">
                              <span class="check"></span>
                            </span>
                          </label>
                        </div>
                        <div class="form-check">
                          <label class="form-check-label">
                            <input class="form-check-input" type="radio" name="exampleRadios" value="option2" checked> First Radio
                            <span class="circle">
                              <span class="check"></span>
                            </span>
                          </label>
                        </div>
                        <div class="form-check">
                          <label class="form-check-label">
                            <input class="form-check-input" type="radio" name="exampleRadios" value="option1"> Second Radio
                            <span class="circle">
                              <span class="check"></span>
                            </span>
                          </label>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <label class="col-sm-2 col-form-label label-checkbox">Inline checkboxes</label>
                      <div class="col-sm-10 checkbox-radios">
                        <div class="form-check form-check-inline">
                          <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" value=""> a
                            <span class="form-check-sign">
                              <span class="check"></span>
                            </span>
                          </label>
                        </div>
                        <div class="form-check form-check-inline">
                          <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" value=""> b
                            <span class="form-check-sign">
                              <span class="check"></span>
                            </span>
                          </label>
                        </div>
                        <div class="form-check form-check-inline">
                          <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" value=""> c
                            <span class="form-check-sign">
                              <span class="check"></span>
                            </span>
                          </label>
                        </div>
                      </div>
                    </div>
<%--                  </form>--%>
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
</asp:Content>
