<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="editcontent.aspx.cs" Inherits="DWUIntranet.pgnavibarside.editpresidentdesk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Trumbowyg/2.23.0/ui/trumbowyg.min.css" integrity="sha512-iw/TO6rC/bRmSOiXlanoUCVdNrnJBCOufp2s3vhTPyP1Z0CtTSBNbEd5wIo8VJanpONGJSyPOZ5ZRjZ/ojmc7g==" crossorigin="anonymous" />
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

    <script src="//ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Trumbowyg/2.23.0/trumbowyg.min.js" integrity="sha512-sffB9/tXFFTwradcJHhojkhmrCj0hWeaz8M05Aaap5/vlYBfLx5Y7woKi6y0NrqVNgben6OIANTGGlojPTQGEw==" crossorigin="anonymous"></script>


       <script>
           $('#editor').trumbowyg();
           var params = (new URL(document.location)).searchParams;
           var pageid = params.get("pageid");
           var pgname = params.get("pgname");

           $(document).ready(function () {

               var global;
               $.ajax({
                   url: 'editcontent.aspx/GetContent',
                   method: 'post',
                   contentType: 'application/json',
                   data: JSON.stringify({ "pageid": pageid }),
                   dataType: 'json',
                   success: function (data) {

                       $("#txttitle").val(data.d.Title);
                       $("#txtname").val(data.d.Name);
                       $("#editor").append(data.d.MainContent);


                   }
               });





               $("#btnsave").click(function (e) {

                   var obj = { "title": $("#txttitle").val(), "name": $("#txtname").val(), "content": $("#editor")[0].innerHTML, "pageid": pageid };



                   $.ajax({
                       url: 'editcontent.aspx/SaveContent',
                       method: 'post',
                       contentType: 'application/json',
                       data: JSON.stringify(obj),
                       dataType: 'json',
                       success: function (data) {

                           if (data.d == true) {


                            window.location.href=pgname;

                           }

                       }
                   });

               });




    });


</script>
</asp:Content>
