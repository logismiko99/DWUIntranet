<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="studentaffairs.aspx.cs" Inherits="DWUIntranet.pgnavibarside.studentaffairs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <input type="hidden" id="hfpageid" value="PG005" />
    <div class="row">
        <div class="col-md-8">
            <div class="card card-profile">
                 <div style="text-align: right;font-size: xxx-large;/* margin-top: 0px; */padding-right: 10px;/* padding-top: 10px; */padding-top: 8px;"><a href="editcontent.aspx?pageid=PG005&pgname=studentaffairs.aspx"><i  class="fa fa-edit"></i></a></div>
                <div class="card-avatar">
                    <a href="#pablo">
                        <img class="img" src="../assets/pics/studentaffair.jpg" />
                    </a>
                </div>
                <div class="card-body">
                    <h6 id="studentaffairsdesig" class="card-category text-gray"></h6>
                    <h4 id="studentaffairsname" class="card-title"></h4>

                    <div id="studentaffairscontent" class="card-description">
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
            url: 'studentaffairs.aspx/SetContent',
            method: 'post',
            contentType:'application/json',
            data: JSON.stringify({ "pageid": pageid }),
            dataType:'json',
            success: function (data) {


                $("#studentaffairsdesig").text(data.d.Title);
                $("#studentaffairsname").text(data.d.Name);
                $("#studentaffairscontent").append(data.d.MainContent);


            }
        });


    });


</script>
</asp:Content>
