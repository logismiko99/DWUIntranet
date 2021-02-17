<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="eventForm.aspx.cs" Inherits="DWUIntranet.pgnavibarside.eventForm" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #ContentPlaceHolder1_ctl00_1{
            margin-right:10px;
        }
        #ContentPlaceHolder1_ctl00_0{
margin-right:10px;
        }
    </style>
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
					  <label class="col-md-3 col-form-label">Title</label>
					  <div class="col-md-9">
						<div class="form-group has-default">
						  <input type="text" class="form-control" runat="server" id="txtTitle" >
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
						   <input type="text" class="form-control timepicker" value="" id="startTime" runat="server">
						</div>
					  </div>
					</div>

					   <div class="row">


					  <label class="col-md-3 col-form-label">End Time</label>
					  <div class="col-md-9">
						<div class="form-group ">
						   <input type="text" class="form-control timepicker" value="" id="endTime" runat="server">
						</div>
					  </div>
					</div>


					</div>



					<div class="col-md-6">

			  <div class="row">
					  <label class="col-md-3 col-form-label">Venue</label>
					  <div class="col-md-9" >
						<div class="form-group" style="width:100%"  >
                            <asp:DropDownList runat="server"  data-style="btn btn-primary btn-round" class="selectpicker" ID="venue" >
                                <asp:ListItem Text="Venue" Value="0"></asp:ListItem>
                                <asp:ListItem Text="SIR PETER BARTER AUDITORIUM" Value="1"></asp:ListItem>
                                <asp:ListItem Text="LIBRARY SEMINAR ROOM 2t" Value="2"></asp:ListItem>
                                <asp:ListItem Text="BOARD ROOM 22" Value="3"></asp:ListItem>
                                <asp:ListItem Text="SVD MEMORIAL AUDITORIUM" Value="4"></asp:ListItem>
                                <asp:ListItem Text="CONFERENCE ROOM 12" Value="5"></asp:ListItem>
                                <asp:ListItem Text="MULTIMEDIA ROOM 1" Value="6"></asp:ListItem>
                                <asp:ListItem Text="MULTIMEDIA ROOM 2" Value="7"></asp:ListItem>
                                <asp:ListItem Text="Student Services Conference Room" Value="8"></asp:ListItem>
                                <asp:ListItem Text="Graduation Arena" Value="9"></asp:ListItem>
                                <asp:ListItem Text="Faculty of Flexible Learning" Value="10"></asp:ListItem>
                                <asp:ListItem Text="Board room 23" Value="11"></asp:ListItem>
                                <asp:ListItem Text="DWU Chapel" Value="12"></asp:ListItem>
                                <asp:ListItem Text="DWU Madang Campus" Value="13"></asp:ListItem>
                                <asp:ListItem Text="St Benedict Campus" Value="14"></asp:ListItem>
                                <asp:ListItem Text="Port Moresby" Value="15"></asp:ListItem>

                            </asp:DropDownList>

						</div>


					  </div>
					</div>
						 <div class="row">


					  <label class="col-md-3 col-form-label">Category</label>
					  <div class="col-md-9">
						<div class="form-group " style="width:100%">
                            <asp:DropDownList runat="server" class="selectpicker" data-size="7" data-style="btn btn-info btn-round" ID="category">
                                <asp:ListItem Text="Category" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Staff Only" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Staff and Student" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Coporate" Value="3"></asp:ListItem>

                            </asp:DropDownList>

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


						<div class="form-check" >

						  <asp:RadioButtonList runat="server" ID="allowReg"  >
                            <asp:ListItem Text="Yes" Value="Y" ></asp:ListItem>
                            <asp:ListItem Text="No" Value="N"  ></asp:ListItem>
                        </asp:RadioButtonList>
						</div>

					  </div>

						  <div class="col-md-6 checkbox-radios">
					  <h4>Allow to Unregister</h4>
						<div class="form-check">
					 <asp:RadioButtonList runat="server" ID="allowUnReg"  >
                            <asp:ListItem Text="Yes" Value="Y" ></asp:ListItem>
                            <asp:ListItem Text="No" Value="N"  ></asp:ListItem>
                        </asp:RadioButtonList>
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
                             <asp:DropDownList runat="server" class="selectpicker"  data-style="btn btn-info btn-round" ID="DropRetition">
                                <asp:ListItem Text="Nothing" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Daily" Value="1"></asp:ListItem>
                                <asp:ListItem Text="weekly" Value="2"></asp:ListItem>
                                <asp:ListItem Text="monthly" Value="3"></asp:ListItem>
                                  <asp:ListItem Text="weekday" Value="4"></asp:ListItem>

                            </asp:DropDownList>

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
					  <input type="text" class="form-control" id="txtDescription" runat="server" >
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
                        <asp:Button class="btn btn-fill btn-rose" runat="server" Text="Submit"  ID="btn_submit" OnClick="btn_submit_Click"/>

					</div>
				  </div>
				</div>











		  </div>
		</div>
	  </div>

	</div>
  </div>

</asp:Content>
