<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="editpresidentcontent.aspx.cs" Inherits="DWUIntranet.pgnavibarside.editpresidentcontent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container-fluid">
        <div class="row bg-light p-3 h-100">



            <div class="col-lg-6 d-flex flex-column">


                <label for="exampleInputEmail1">Title</label>
                <input type="text"  class="form-control" id="txttitle" aria-describedby="emailHelp" placeholder="Enter title">

                <label for="exampleInputEmail1">Name</label>
                <input id="txtname" type="text" class="form-control"  aria-describedby="emailHelp" placeholder="Enter name">


                <label for="exampleInputEmail1">Content</label>
                <div id="editor" class="shadow w-100 rounded border d-block"></div>
            </div>
            <div class="col-lg-6 bg-light d-flex flex-column" style="display: none !important;">
                <p class="lead text-center">HTML</p>
                <div id="output" class="w-100 h-100 d-block border rounded shadow p-2" style="overflow-wrap: break-word"></div>
            </div>


        </div>

    </div>
    <div class="row">
        <div class="col-lg-6 ">

       
           <button class="btn btn-primary" id="btnsave">Save</button>

            </div>
        
    </div>
     <script src="../assets/js/core/jquery.min.js"></script>
    
    
       <script>

           $(document).ready(function () {

             
               $.ajax({
                   url: 'editpresidentcontent.aspx/GetContent',
                   method: 'post',
                   contentType: 'application/json',
                   data: JSON.stringify({ "pageid": 'PG001' }),
                   dataType: 'json',
                   success: function (data) {

                       $("#txttitle").val(data.d.Title);
                       $("#txtname").val(data.d.Name);
                      

                       var $iframe = $('iframe');
                       $iframe.ready(function () {
                           $iframe.contents().find("body").append(data.d.MainContent);
                       });

                   }
               });





               $("#btnsave").click(function () {

                   $.ajax({
                       url: 'editpresidentcontent.aspx/SaveContent',
                       method: 'post',
                       contentType: 'application/json',
                       data: JSON.stringify({ "title": $("#txttitle").val(), "name": $("#txtname").val(), "content": $("#output").text(), "pageid": 'PG001' }),
                       dataType: 'json',
                       success: function (data) {

                           if (data.d == true) {

                              

                                   window.location.href = "presidentdesk.aspx";
                              
                              
                           }

                       }
                   });

               });
       
       


    });


</script>
</asp:Content>
