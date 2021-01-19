<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="editpresidentdesk.aspx.cs" Inherits="DWUIntranet.pgnavibarside.editpresidentdesk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    <link rel="shortcut icon" href="../logo.png" type="image/x-icon">
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

     <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em" crossorigin="anonymous"></script>
      <script src="../assets/js/editor.js"></script>
    
    <script>

        var ed = new BlackEdit('editor', 'output');
        ed.init(auto_output = true);




    </script>
    
       <script>

           $(document).ready(function () {

               var global;
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
                           global = data.d.MainContent;
                       });

                   }
               });





               $("#btnsave").click(function () {

                   var obj = {};

                   if ($("#output").text() == "") {

                       obj = { "title": $("#txttitle").val(), "name": $("#txtname").val(), "content": global, "pageid": 'PG001' }

                   } else {
                       obj = { "title": $("#txttitle").val(), "name": $("#txtname").val(), "content": $("#output").text(), "pageid": 'PG001' }
                   }

                   $.ajax({
                       url: 'editpresidentcontent.aspx/SaveContent',
                       method: 'post',
                       contentType: 'application/json',
                       data: JSON.stringify(obj),
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
