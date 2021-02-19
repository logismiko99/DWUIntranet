<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="events.aspx.cs" Inherits="DWUIntranet.pgnavibarside.events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .dataTables_empty {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="material-datatables">
        <table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width: 100%">
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Date</th>
                    <th>Venue</th>


                </tr>
            </thead>
            <tfoot>
                <tr>
                    <th>Title</th>
                    <th>Date</th>
                    <th>Venue</th>

                </tr>
            </tfoot>
            <tbody>
            </tbody>
        </table>
    </div>

    <script src="../assets/js/core/jquery.min.js"></script>
    <script src="../assets/js/date.format.js"></script>

    <script>

        $(document).ready(function () {

            $.ajax({
                url: 'events.aspx/GetEventList',
                method: 'GET',
                contentType: 'application/json',

                dataType: 'json',
                success: function (data) {

                    //var date = "\/Date(1297246301973)\/";

                    console.log(data);

                    for (var i = 0; i < data.d.length; i++) {

                        var nowDate = new Date(parseInt(data.d[i].FromDate.substr(6)));
                        var result = nowDate.format("yyyy-mmm-dd");

                        console.log(result);

                        var HtmlStr = '<tr><td>' + data.d[i].EventTitle + '</td><td>' + result + '</td><td>' + data.d[i].Venue + '</td></tr>';
                        $('#datatables tbody').append(HtmlStr);
                    }



                }
            });

        });
    </script>
</asp:Content>
