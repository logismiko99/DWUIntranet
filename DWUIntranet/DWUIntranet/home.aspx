<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="DWUIntranet.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
ul, #myUL {
  list-style-type: none;
}

#myUL {
  margin: 0;
  padding: 0;
}

.caret {
  cursor: pointer;
  -webkit-user-select: none; /* Safari 3.1+ */
  -moz-user-select: none; /* Firefox 2+ */
  -ms-user-select: none; /* IE 10+ */
  user-select: none;
}

.caret::before {
  content: "\25B6";
  color: black;
  display: inline-block;
  margin-right: 6px;
}

.caret-down::before {
  -ms-transform: rotate(90deg); /* IE 9 */
  -webkit-transform: rotate(90deg); /* Safari */'
  transform: rotate(90deg);  
}

/*.nested {
  display: none;
}*/

.active {
  display: block;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="row" style="padding-top:10px">
            <div class="col-md-8">
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://intranet.dwu.ac.pg/images/stories/simpleslideshow/1.jpg" style="height:400px" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://intranet.dwu.ac.pg/images/stories/simpleslideshow/2.jpg" style="height:400px"  class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://intranet.dwu.ac.pg/images/stories/simpleslideshow/3.jpg" style="height:400px"  class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
            </div>
            <div class="col-md-4">
              <div class="card card-profile">
                <div class="card-avatar">
                  <a href="#pablo">
                    <img class="img" src="https://intranet.dwu.ac.pg/images/stories/article_img/Fr_jan/Presidents_Pic_2020.jpg" />
                  </a>
                </div>
                <div class="card-body" style="text-align:left">
<%--                  <h6 class="card-category text-gray">CEO / Co-Founder</h6>
                  <h4 class="card-title">Alec Thompson</h4>
                  <p class="card-description">
                    Don't be scared of the truth because we need to restart the human foundation in truth And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                  </p>
                  <a href="#pablo" class="btn btn-rose btn-round">Follow</a>--%>
<%--<div class="list-group">
  <a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a>

  
  <a href="#" class="list-group-item list-group-item-action list-group-item-primary">A simple primary list group item</a>
  <a href="#" class="list-group-item list-group-item-action list-group-item-secondary">A simple secondary list group item</a>
  <a href="#" class="list-group-item list-group-item-action list-group-item-success">A simple success list group item</a>
  <a href="#" class="list-group-item list-group-item-action list-group-item-danger">A simple danger list group item</a>
  <a href="#" class="list-group-item list-group-item-action list-group-item-warning">A simple warning list group item</a>
  <a href="#" class="list-group-item list-group-item-action list-group-item-info">A simple info list group item</a>
  <a href="#" class="list-group-item list-group-item-action list-group-item-light">A simple light list group item</a>
  <a href="#" class="list-group-item list-group-item-action list-group-item-dark">A simple dark list group item</a>
</div>--%>
<ul id="myUL">
  <li><span class="caret">2020-01-20</span>
    <ul class="nested">
      <li><a href="#">Welcome Message - Isuru udara Wickramasinghe</a></li>
    </ul>
  </li>
  <li><span class="caret">2019-08-04</span>
    <ul class="nested">
      <li><a href="#">Open Letter to DWU Community</a></li>
      <li><a href="#">Regarding Antisocial Behaviour</a></li>
    </ul>
  </li>
  <li><span class="caret">2016-11-27</span>
    <ul class="nested">
      <li><a href="#">DBTI Graduation Speech [President]</a></li>
    </ul>
  </li>
  <li><span class="caret">2016-11-27</span>
    <ul class="nested">
      <li><a href="#">Review Week Presentation</a></li>
    </ul>
  </li>
</ul>
                </div>
              </div>
            </div>
          </div>
</asp:Content>
