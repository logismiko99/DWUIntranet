<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="newslist.aspx.cs" Inherits="DWUIntranet.pgnavibarside.news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>

    <script src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap.min.js"></script>

    <style>


        .card{
            margin-bottom:0 !important;
            margin-top:0 !important;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">

        <div class="col-lg-6"></div>
        <div class="col-lg-6" style="margin-top: 50px;">
        <a href="#"><i style="float: right;
    font-size: 45px;" class="fa fa-plus"></i></a>
        </div>

    </div>

    <div class="wrapper">
        <table id="example" class="table table-striped table-bordered" style="width: 100%">
            <thead>
                <tr>
                    <th style="display: none">Name</th>

                </tr>
            </thead>
            <tbody>
            

               <tr>
                    <td>

                   <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Navigation Pills -
                    <small class="description">Horizontal Tabs</small>
                  </h4>
                </div>
                <div class="card-body ">
               
                  <div class="tab-content tab-space">
                    <div class="tab-pane active" id="link1">
                      Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits.
                      <br>
                      <br> Dramatically visualize customer directed convergence without revolutionary ROI. Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits.
                      <br>
                      <br> This is very nice.
                    </div>
                    
                  </div>
                </div>
              </div>

                    </td>

                </tr>

                 <tr>
                    <td>

                   <div class="card ">
                <div class="card-header ">
                  <h4 class="card-title">Navigation Pills -
                    <small class="description">Horizontal Tabs</small>
                  </h4>
                </div>
                <div class="card-body ">
               
                  <div class="tab-content tab-space">
                    <div class="tab-pane active" id="link1">
                      Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits.
                      <br>
                      <br> Dramatically visualize customer directed convergence without revolutionary ROI. Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits.
                      <br>
                      <br> This is very nice.
                    </div>
                    
                  </div>
                </div>
              </div>

                    </td>

                </tr>

              

            </tbody>

        </table>


        
               
        <%--    <table id="example">
 
  <tbody>
    <tr>
      <div class="heading">News 1</div>
    </tr>
    <tr>
      <div class="heading">News 2</div>
    </tr>
    <tr>
       <div class="heading">News 3</div>
    </tr>
    <tr>
     <div class="heading">News 4</div>
    </tr>
      <tr>
     <div class="heading">News 4</div>
    </tr>
      <tr>
     <div class="heading">News 4</div>
    </tr>
      <tr>
     <div class="heading">News 4</div>
          <tr>
     <div class="heading">News 4</div>
    </tr>
          <tr>
     <div class="heading">News 4</div>
    </tr>
          <tr>
     <div class="heading">News 4</div>
              <tr>
     <div class="heading">News 4</div>
    </tr>

    </tr>

    </tr>
  </tbody>
</table>--%>
    </div>


    <script>
        $(document).ready(function () {
            $('#example').DataTable();

        });
    </script>

</asp:Content>
