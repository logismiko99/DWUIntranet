<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="dsr.aspx.cs" Inherits="DWUIntranet.pgnavibarside.dsr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <input type="hidden" id="hfpageid" value="PG010" />
    <div class="row">
        <div class="col-md-12">
            <div class="card card-profile">
                 <div style="text-align: right;font-size: xxx-large;/* margin-top: 0px; */padding-right: 10px;/* padding-top: 10px; */padding-top: 8px;"><a href="editcontent.aspx?pageid=PG010&pgname=dsr.aspx"><i  class="fa fa-edit"></i></a></div>

                <div class="card-body">
                    <h6 id="dsrdesig" class="card-category text-gray"></h6>
                    <h4 id="dsrname" class="card-title"></h4>

                    <div id="dsrcontent" class="card-description">
                    </div>
                    <%--                    <a href="#pablo" class="btn btn-rose btn-round">Follow</a>--%>
                </div>
            </div>
        </div>

    </div>
  <script src="../assets/js/core/jquery.min.js"></script>

    <script>

    $(document).ready(function () {
        var pageid =$("#hfpageid").val();
        $.ajax({
            url: 'dsr.aspx/SetContent',
            method: 'post',
            contentType:'application/json',
            data: JSON.stringify({ "pageid": pageid }),
            dataType:'json',
            success: function (data) {


                $("#dsrdesig").text(data.d.Title);
                $("#dsrname").text(data.d.Name);
                $("#dsrcontent").append(data.d.MainContent);


            }
        });


    });


</script>
</asp:Content>
