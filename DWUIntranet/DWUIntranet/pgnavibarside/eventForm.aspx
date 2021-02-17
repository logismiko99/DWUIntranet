<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="eventForm.aspx.cs" Inherits="DWUIntranet.pgnavibarside.eventForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <div class="content">
        <div class="container-fluid">
          <div class="row">

            <div class="col-md-12">
              <div class="card ">

                <div class="card-body ">
                  <form class="form-horizontal">
				  <div class="row">
				  <div class ="col-md-6">
                    <div class="row">
                      <label class="col-md-3 col-form-label">Email</label>
                      <div class="col-md-9">
                        <div class="form-group has-default">
                          <input type="email" class="form-control">
                        </div>
                      </div>
                    </div>


					   <div class="row">


                      <label class="col-md-3 col-form-label">From Date</label>
                      <div class="col-md-9">
                        <div class="form-group ">
                           <input type="text" class="form-control datepicker" value="" id="fromDate" runat="server">
                        </div>
                      </div>
                    </div>

										   <div class="row">


                      <label class="col-md-3 col-form-label">To Date</label>
                      <div class="col-md-9">
                        <div class="form-group ">
                           <input type="text" class="form-control datepicker" value="" id="toDate" runat="server">
                        </div>
                      </div>
                    </div>
					<div class="row">


                      <label class="col-md-3 col-form-label">Start Time</label>
                      <div class="col-md-9">
                        <div class="form-group ">
                           <input type="text" class="form-control datepicker" value="" id="startTime" runat="server">
                        </div>
                      </div>
                    </div>

					   <div class="row">


                      <label class="col-md-3 col-form-label">End Time</label>
                      <div class="col-md-9">
                        <div class="form-group ">
                           <input type="text" class="form-control datepicker" value="" id="endTime" runat="server">
                        </div>
                      </div>
                    </div>


					</div>



				    <div class="col-md-6">

			  <div class="row">
                      <label class="col-md-3 col-form-label">Venue</label>
                      <div class="col-md-9" >
                        <div class="form-group" style="width:100%"  >
                          <select class="selectpicker" data-size="7" data-style="btn btn-primary btn-round" title="Venue" >
                            <option disabled selected>Venue</option>
                            <option value="2">SIR PETER BARTER AUDITORIUM</option>
                            <option value="3">LIBRARY SEMINAR ROOM 2t</option>
                            <option value="4">BOARD ROOM 22</option>
                            <option value="5">SVD MEMORIAL AUDITORIUM</option>
                            <option value="6">CONFERENCE ROOM 12</option>
                              <option value="6">MULTIMEDIA ROOM 1</option>
                              <option value="6">MULTIMEDIA ROOM 2</option>
                              <option value="6">Student Services Conference Room</option>
                              <option value="6">Graduation Arena</option>
                              <option value="6">FFL</option>
                              <option value="6">Faculty of Flexible Learning</option>
                              <option value="6">Board room 23</option>
                              <option value="6">DWU Chapel</option>
                              <option value="6">DWU Madang Campus</option>
                              <option value="6">St Benedict Campus</option>
                                 <option value="6">Port Moresby</option>

                          </select>
                        </div>


                      </div>
                    </div>
					     <div class="row">


                      <label class="col-md-3 col-form-label">Category</label>
                      <div class="col-md-9">
                        <div class="form-group " style="width:100%">
                          <select class="selectpicker" data-size="7" data-style="btn btn-info btn-round" title="Category" ">
                            <option disabled selected>Category</option>
                            <option value="2">Staff Only</option>
                            <option value="3">Staff and Student</option>
                            <option value="4">Coporate</option>


                          </select>
                        </div>
                      </div>
                    </div>

			 </div>

  <div class="col-md-12">
              <div class="card ">
                <div class="card-header card-header-rose card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">how_to_reg</i>
                  </div>
                  <h4 class="card-title">Register</h4>
                </div>
                <div class="card-body ">
                  <div class="form-horizontal">
                  <div class="row">

                      <div class="col-md-6 checkbox-radios">
                      <h4>Allow to Register</h4>
                        <div class="form-check">

                          <label class="form-check-label">
                            <input class="form-check-input" type="radio" name="exampleRadios" value="option2" checked> Yes
                            <span class="circle">
                              <span class="check"></span>
                            </span>
                          </label>
                        </div>
                        <div class="form-check">
                          <label class="form-check-label">
                            <input class="form-check-input" type="radio" name="exampleRadios" value="option1"> No
                            <span class="circle">
                              <span class="check"></span>
                            </span>
                          </label>
                        </div>
                      </div>

					      <div class="col-md-6 checkbox-radios">
                      <h4>Allow to Unregister</h4>
                        <div class="form-check">
                          <label class="form-check-label">
                            <input class="form-check-input" type="radio" name="exampleRadios" value="option2" checked> Yes
                            <span class="circle">
                              <span class="check"></span>
                            </span>
                          </label>
                        </div>
                        <div class="form-check">
                          <label class="form-check-label">
                            <input class="form-check-input" type="radio" name="exampleRadios" value="option1"> No
                            <span class="circle">
                              <span class="check"></span>
                            </span>
                          </label>
                        </div>
                      </div>
                    </div>

                  </div>
                </div>

              </div>
            </div>


  <div class="col-md-12">
  <div class="row">
  <div class="col-md-6">
              <div class="card ">
                <div class="card-header card-header-rose card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">date_range</i>
                  </div>
                  <h4 class="card-title">Repetition</h4>
                </div>
                <div class="card-body ">
                  <div class="form-horizontal">

                  <div class="row">


                      <div class="col-md-9">
                        <div class="form-group ">
                          <select class="selectpicker" data-size="7" data-style="btn btn-primary btn-round" title="Category" ">
                            <option disabled selected>Nothing</option>
                            <option value="2">Daily</option>
                            <option value="3">weekly</option>
                            <option value="4">monthly</option>
							<option value="4">weekday</option>


                          </select>
                        </div>
                      </div>


                    </div>


                  </div>
                </div>

              </div>
            </div>

  <div class="col-md-6">
              <div class="card ">
                <div class="card-header card-header-rose card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">upload</i>
                  </div>
                  <h4 class="card-title">Image</h4>
                </div>
                <div class="card-body ">
                  <div class="form-horizontal">

                  <div class="row">


                     <div class="col-md-3 col-sm-4">

                      <div class="fileinput fileinput-new text-center" data-provides="fileinput">
                        <div class="fileinput-new thumbnail img-circle">
                          <img src="../../assets/img/placeholder.jpg" alt="...">
                        </div>
                        <div class="fileinput-preview fileinput-exists thumbnail img-circle"></div>
                        <div>
                          <span class="btn btn-round btn-rose btn-file">
                            <span class="fileinput-new">Select Image</span>
                            <span class="fileinput-exists">Change</span>
                            <input type="file" name="..." />
                          </span>
                          <br />
                          <a href="#pablo" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i> Remove</a>
                        </div>
                      </div>
                    </div>


                    </div>


                  </div>
                </div>

              </div>
            </div>
</div>
             </div>
<div class="col-md-12">
<div class="row">
              <div class="card">
                <div class="card-header card-header-rose card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">comment</i>
                  </div>
                  <h4 class="card-title">Description</h4>
                </div>
                <div class="card-body ">

                  <div class="row" >
                      <div class="form-group"style="width:100%">
                      <label for="exampleEmail" class="bmd-label-floating">Description</label>
                      <input type="text" class="form-control" id="exampleEmail" >
                    </div>


                    </div>


                </div>

              </div>
			  </div>
            </div>

                   </div>
                  </form>

				</div>
                <div class="card-footer ">
                  <div class="row">
                    <div class="col-md-9">
                      <button type="submit" class="btn btn-fill btn-rose">Submit</button>
                    </div>
                  </div>
                </div>











          </div>
        </div>
      </div>

    </div>
  </div>

</asp:Content>
