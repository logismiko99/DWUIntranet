<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="qualityassurance.aspx.cs" Inherits="DWUIntranet.pgnavibarside.qualityassurance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <input type="hidden" id="hfpageid" value="PG003" />
    <div class="row">
        <div class="col-md-8">
            <div class="card card-profile">
                 <div style="text-align: right;font-size: xxx-large;/* margin-top: 0px; */padding-right: 10px;/* padding-top: 10px; */padding-top: 8px;"><a href="editcontent.aspx?pageid=PG003&pgname=qualityassurance.aspx"><i  class="fa fa-edit"></i></a></div>
                <div class="card-avatar">
                    <a href="#pablo">
                        <img class="img" src="../assets/pics/quality.png" />
                    </a>
                </div>
                <div class="card-body">
                    <h6 id="qualityassdesig" class="card-category text-gray"></h6>
                    <h4 id="qualityassname" class="card-title"></h4>

                    <div id="qualityasscontent" class="card-description">
                    </div>
                    <%--                    <a href="#pablo" class="btn btn-rose btn-round">Follow</a>--%>
                </div>
            </div>
        </div>
        <div class="col-md-8"></div>
    </div>
  <script src="../assets/js/core/jquery.min.js"></script>

    <script>

    $(document).ready(function () {
        var pageid =$("#hfpageid").val();
        $.ajax({
            url: 'qualityassurance.aspx/SetContent',
            method: 'post',
            contentType:'application/json',
            data: JSON.stringify({ "pageid": pageid }),
            dataType:'json',
            success: function (data) {


                $("#qualityassdesig").text(data.d.Title);
                $("#qualityassname").text(data.d.Name);
                $("#qualityasscontent").append(data.d.MainContent);


            }
        });


    });


</script>
</asp:Content>
