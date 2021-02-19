<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="publicservice.aspx.cs" Inherits="DWUIntranet.pgnavibarside.publicservice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="content">
        <div class="container-fluid">
          <div class="container-fluid">
            <div class="row">

    <div class="col-md-12">
                <div class="card">
                  <div class="card-header card-header-icon card-header-rose">
                    <div class="card-icon">
                      <i class="material-icons">assignment</i>
                    </div>
                    <h4 class="card-title ">Education</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="education">
                        <thead class=" text-primary">
                          <th>
                            Name of Services
                          </th>
                          <th>
                           Address
                          </th>
                          <th>
                            Postal Address
                          </th>
                          <th>
                            Phone
                          </th>
                          <th>
                           Fax
                          </th>
                        </thead>
                        <tbody>

                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>


               

                </div>

              <div class="row">
                    <div class="col-md-6">
                <div class="card">
                  <div class="card-header card-header-icon card-header-rose">
                    <div class="card-icon">
                      <i class="material-icons">assignment</i>
                    </div>
                    <h4 class="card-title ">Emergency Services</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="emergency">
                       <thead class=" text-primary">
                          <th>
                            Name of Services
                          </th>
                          <th>
                           Address
                          </th>
                          <th>
                            Postal Address
                          </th>
                          <th>
                            Phone
                          </th>
                          <th>
                           Fax
                          </th>
                        </thead>
                        <tbody>

                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
              </div>

               <div class="row">

                    <div class="col-md-12">
                <div class="card">
                  <div class="card-header card-header-icon card-header-rose">
                    <div class="card-icon">
                      <i class="material-icons">assignment</i>
                    </div>
                    <h4 class="card-title ">Health</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="health">
                        <thead class=" text-primary">
                          <th>
                            Name of Services
                          </th>
                          <th>
                           Address
                          </th>
                          <th>
                            Postal Address
                          </th>
                          <th>
                            Phone
                          </th>
                          <th>
                           Fax
                          </th>
                        </thead>
                        <tbody>

                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>



                   </div>

              <div class="row">
                    <div class="col-md-6">
                <div class="card">
                  <div class="card-header card-header-icon card-header-rose">
                    <div class="card-icon">
                      <i class="material-icons">assignment</i>
                    </div>
                    <h4 class="card-title ">Entertainment</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="entertainment">
                       <thead class=" text-primary">
                          <th>
                            Name of Services
                          </th>
                          <th>
                           Address
                          </th>
                          <th>
                            Postal Address
                          </th>
                          <th>
                            Phone
                          </th>
                          <th>
                           Fax
                          </th>
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
         </div>


    <script src="../assets/js/core/jquery.min.js"></script>
        <script>

        $(document).ready(function () {
           
            $.ajax({
                url: 'publicservice.aspx/GetEductionList',
                method: 'GET',
                contentType: 'application/json',
               
                dataType: 'json',
                success: function (data) {


                    console.log(data);
                    
                    for (var i = 0; i < data.d.length; i++) {

                        var HtmlStr = '<tr><td>' + data.d[i].Service + '</td><td>' + data.d[i].Address + '</td><td>' + data.d[i].PostalAddress + '</td><td>' + data.d[i].Phone + '</td><td>' + data.d[i].Fax + '</td></tr>';
                        $('.education tbody').append(HtmlStr);
                    }

                   

                }
            });
            $.ajax({
                url: 'publicservice.aspx/GetEmergencyService',
                method: 'GET',
                contentType: 'application/json',

                dataType: 'json',
                success: function (data) {


                    console.log(data);

                    for (var i = 0; i < data.d.length; i++) {

                        var HtmlStr = '<tr><td>' + data.d[i].Service + '</td><td>' + data.d[i].Address + '</td><td>' + data.d[i].PostalAddress + '</td><td>' + data.d[i].Phone + '</td><td>' + data.d[i].Fax + '</td></tr>';
                        $('.emergency tbody').append(HtmlStr);
                    }



                }
            });
            $.ajax({
                url: 'publicservice.aspx/GetEntertainment',
                method: 'GET',
                contentType: 'application/json',

                dataType: 'json',
                success: function (data) {


                    console.log(data);

                    for (var i = 0; i < data.d.length; i++) {

                        var HtmlStr = '<tr><td>' + data.d[i].Service + '</td><td>' + data.d[i].Address + '</td><td>' + data.d[i].PostalAddress + '</td><td>' + data.d[i].Phone + '</td><td>' + data.d[i].Fax + '</td></tr>';
                        $('.entertainment tbody').append(HtmlStr);
                    }



                }
            });
            $.ajax({
                url: 'publicservice.aspx/GetHealthService',
                method: 'GET',
                contentType: 'application/json',

                dataType: 'json',
                success: function (data) {


                    console.log(data);

                    for (var i = 0; i < data.d.length; i++) {

                        var HtmlStr = '<tr><td>' + data.d[i].Service + '</td><td>' + data.d[i].Address + '</td><td>' + data.d[i].PostalAddress + '</td><td>' + data.d[i].Phone + '</td><td>' + data.d[i].Fax + '</td></tr>';
                        $('.health tbody').append(HtmlStr);
                    }

                }
            });

        });
    </script>
</asp:Content>
