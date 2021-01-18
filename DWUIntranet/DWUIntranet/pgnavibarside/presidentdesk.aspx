<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="presidentdesk.aspx.cs" Inherits="DWUIntranet.pgnavibarside.presidentdesk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

    <input type="hidden" id="hfpageid" value="PG001" />
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
        var pageid =$("#hfpageid").val();
        $.ajax({
            url: 'presidentdesk.aspx/SetContent',
            method: 'post',
            contentType:'application/json',
            data: JSON.stringify({ "pageid": pageid }),
            dataType:'json',
            success: function (data) {
               

                alert(data);

                $("#presidentdesig").text(data.Title);
                $("#presidentname").text(data.Name);
                $("#presidentcontent").append(data.MainContent);

                      
            }
        });


    });


</script>
</asp:Content>


