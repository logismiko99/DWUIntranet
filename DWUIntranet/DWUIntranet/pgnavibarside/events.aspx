<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="events.aspx.cs" Inherits="DWUIntranet.pgnavibarside.events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       .dataTables_empty{
           display:none;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <div class="material-datatables">
                    <table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
                      <thead>
                        <tr>
                          <th>Date</th>
                          <th>Title</th>
                          <th>Venue</th>
                            <th>Start Time</th>
                            <th>End Time</th>
                         

                        </tr>
                      </thead>
                      <tfoot>
                        <tr>
                        <th>Date</th>
                          <th>Title</th>
                          <th>Venue</th>
                            <th>Start Time</th>
                            <th>End Time</th>
                         
                        </tr>
                      </tfoot>
                      <tbody>
                       
                      </tbody>
                    </table>
                  </div>
    
<script src="../assets/js/core/jquery.min.js"></script>
        <script>

        $(document).ready(function () {
           
            $.ajax({
                url: 'events.aspx/GetEventList',
                method: 'GET',
                contentType: 'application/json',
               
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
