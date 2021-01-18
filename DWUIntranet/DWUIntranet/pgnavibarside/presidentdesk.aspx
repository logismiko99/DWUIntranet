<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="presidentdesk.aspx.cs" Inherits="DWUIntranet.pgnavibarside.presidentdesk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="hfpageid" runat="server" Value="PG001" />
    <div class="row">
        <div class="col-md-8">
            <div class="card card-profile">
                <div class="card-avatar">
                    <a href="#pablo">
                        <img class="img" src="../../assets/img/faces/marc.jpg" />
                    </a>
                </div>
                <div class="card-body">
                    <h6 id="presidentdesig" class="card-category text-gray"></h6>
                    <h4 id="presidentname" class="card-title"></h4>

                    <div id="presidentcontent" class="card-description">
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

        $.ajax({
            url: "presidentdesk.aspx/SendMessage",
            type: "GET",
            cache: false,
            success: function (data) {


                alert(data);

                $("#presidentdesig").text();
                $("#presidentname").text();
                $("#presidentcontent").append();

                      
            }
        });


    });


</script>
</asp:Content>


