<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="dsr.aspx.cs" Inherits="DWUIntranet.pgnavibarside.dsr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <input type="hidden" id="hfpageid" value="PG010" />
    <div class="row">
        <div class="col-md-12">
            <div class="card card-profile">
                <div style="text-align: right; font-size: xxx-large; /* margin-top: 0px; */padding-right: 10px; /* padding-top: 10px; */padding-top: 8px;"><a href="editcontent.aspx?pageid=PG010&pgname=dsr.aspx"><i class="fa fa-edit"></i></a></div>

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

    <div class="row">
        <div class="col-md-4">
            <div class="card card-product">
                <div class="card-header card-header-image" data-header-animation="true">
                    <a href="#pablo">
                        <img class="img" src="../assets/pics/dsr/alphanets.png">
                    </a>
                </div>
                <div class="card-body">
                    <p style="text-align: justify;">AlphaNets&nbsp;specializes in the provision of customized ICT solutions for a range of applications to support Education, Commercial, Industrial and the Home Environments.</p>
                    <p style="margin: 1em 0px; padding: 0px;">
                        <p style="text-align: justify;"><span style="background-color: rgb(255, 255, 255); font-size: 13px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;">More Information:</span></p>
                        <p style="text-align: justify;">Telephone : +(675) 424 1 777/888</p>
                        <span style="text-align: -webkit-left;">
                            <p style="text-align: justify;"><span style="font-size: 1rem;">Fax : +( 675) 422 3905</span></p>
                        </span><span style="text-align: -webkit-left;">
                            <p style="text-align: justify;"><span style="font-size: 1rem;">Web :&nbsp;</span><a target="_blank" href="http://www.alphanets.net.pg/" style="background-color: rgb(248, 249, 250); font-size: 1rem;">http://www.alphanets.net.pg</a></p>
                        </span><span style="text-align: -webkit-left;">
                            <p style="text-align: justify;"><span style="font-size: 1rem;">Email :&nbsp;</span><a href="mailto:%%20%3Cscript%20language='JavaScript'%20type='text/javascript'%3E%20%3C!--%20var%20prefix%20=%20'mailto:';%20var%20suffix%20=%20'';%20var%20attribs%20=%20'';%20var%20path%20=%20'hr'%20+%20'ef'%20+%20'=';%20var%20addy93515%20=%20'20info'%20+%20'@';%20addy93515%20=%20addy93515%20+%20'alphanets'%20+%20'.'%20+%20'net'%20+%20'.'%20+%20'pg';%20document.write(%20'%3Ca%20'%20+%20path%20+%20'\''%20+%20prefix%20+%20addy93515%20+%20suffix%20+%20'\''%20+%20attribs%20+%20'%3E'%20);%20document.write(%20addy93515%20);%20document.write(%20'%3C\/a%3E'%20);%20//--%3E%20%3C/script%3E%3Cscript%20language='JavaScript'%20type='text/javascript'%3E%20%3C!--%20document.write(%20'%3Cspan%20style=\'display:%20none;\'%3E'%20);%20//--%3E%20%3C/script%3EThis%20e-mail%20address%20is%20being%20protected%20from%20spambots.%20You%20need%20JavaScript%20enabled%20to%20view%20it%20%3Cscript%20language='JavaScript'%20type='text/javascript'%3E%20%3C!--%20document.write(%20'%3C/'%20);%20document.write(%20'span%3E'%20);%20//--%3E%20%3C/script%3E" style="background-color: rgb(248, 249, 250); font-size: 1rem;"></a><a href="mailto:info@alphanets.net.pg" style="background-color: rgb(248, 249, 250); font-size: 1rem;">info@alphanets.net.pg</a><span style="font-size: 1rem;">This e-mail address is being protected from spambots. You need JavaScript enabled to view it</span></p>
                        </span>
                    </p>
                </div>
                <div class="card-footer">
                    <div class="price">
                    </div>
                    <div class="stats">
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card card-product">
                <div class="card-header card-header-image" data-header-animation="true">
                    <a href="#pablo">
                        <img class="img" src="../assets/pics/dsr/globaltravel.jpg">
                    </a>
                </div>
                <div class="card-body">


                    <p style="text-align: justify;">Global Travel Center&nbsp;is the traveling agency of the Divine Word University (DWU) in Papua New Guinea.</p>
                    <p style="margin: 1em 0px; padding: 0px;">
                        <p style="text-align: justify;"><span style="background-color: rgb(255, 255, 255); font-size: 13px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;">More Information:</span></p>
                        <span style="text-align: start;">
                            <p style="text-align: justify;"><span style="font-size: 13px;">TP : (+675) 424 1859/422 0011</span></p>
                        </span><span style="text-align: start;">
                            <p style="text-align: justify;"><span style="font-size: 13px;">Fax : (+675) 422 3930</span></p>
                        </span><span style="text-align: start;">
                            <p style="text-align: justify;"><span style="font-size: 13px;">Email :&nbsp;</span><a href="mailto:awinfrey@dwu.ac.pg" style="background-color: rgb(248, 249, 250); font-size: 1rem;">awinfrey@dwu.ac.pg</a><span style="font-size: 1rem;">This e-mail address is being protected from spambots. You need JavaScript enabled to view it&nbsp;</span><span style="font-size: 1rem;">/&nbsp;</span><a href="mailto:dealedona@dwu.ac.pg" style="background-color: rgb(248, 249, 250); font-size: 1rem;">dealedona@dwu.ac.pg</a><span style="font-size: 1rem;">This e-mail address is being protected from spambots. You need JavaScript enabled to view it</span></p>
                        </span><span style="text-align: start;">
                            <p style="text-align: justify;"><span style="font-size: 13px;">Web :&nbsp;</span><a target="_blank" href="http://www.globaltravel.com.pg/" style="background-color: rgb(248, 249, 250); font-size: 1rem;">www.globaltravel.com.pg</a></p>
                        </span>
                    </p>


                </div>
                <div class="card-footer">
                    <div class="price">
                    </div>
                    <div class="stats">
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card card-product">
                <div class="card-header card-header-image" data-header-animation="true">
                    <a href="#pablo">
                        <img class="img" src="../assets/pics/dsr/diwai.gif">
                    </a>
                </div>
                <div class="card-body">

                    <p style="text-align: justify;">Diwai Pacific Limited&nbsp;is the commercial consulting unit of the Divine Word University (DWU) in Papua New Guinea.</p>
                    <p style="">
                        <p style="text-align: justify;"><span style="background-color: rgb(255, 255, 255); font-size: 13px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;">More Information:</span></p>
                        <p style="text-align: justify;">
                            <a target="_blank" href="http://www.diwaipacific.com.pg/" style=""><a target="_blank" href="http://www.diwaipacific.com.pg/" style="background-color: rgb(248, 249, 250); font-size: 1rem;">http://www.diwaipacific.com.pg/</a><br>
                            </a>
                        </p>
                    </p>
                </div>
                <div class="card-footer">
                    <div class="price">
                    </div>
                    <div class="stats">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <div class="card card-product">
                <div class="card-header card-header-image" data-header-animation="true">
                    <a href="#pablo">
                        <img class="img" src="../assets/pics/dsr/diwai_mart.jpg">
                    </a>
                </div>
                <div class="card-body">
                </div>
                <div class="card-footer">
                    <div class="price">
                    </div>
                    <div class="stats">
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card card-product">
                <div class="card-header card-header-image" data-header-animation="true">
                    <a href="#pablo">
                        <img class="img" src="../assets/pics/dsr/DPHL.jpg">
                    </a>
                </div>
                <div class="card-body">
                    <p style="margin: 1em 0px; padding: 0px;">Diwai Pharmaceuticals Limited (DPhL)<br style="text-align: start;">
                        <span style="text-align: start;">P.O Box 483, Madang,</span><br style="text-align: start;">
                        <span style="text-align: start;">Papua New Guinea.</span><br style="text-align: start;">
                        <span style="text-align: start;">TP : (+675) 4222937</span><br style="text-align: start;">
                        <span style="text-align: start;">FAX : (+675) 4222812</span><br style="text-align: start;">
                        <font color="#333333" face="Arial, Helvetica, sans-serif"><span style="font-size: 13px; background-color: rgb(255, 255, 255);">More Information:</span></font>
                        <br style="text-align: start;">
                        <span style="text-align: start;">Email :&nbsp;</span><a href="mailto:fhombhanje@dwu.ac.pg" style="text-align: start;">fhombhanje@dwu.ac.pg</a><span style="text-align: start;">This e-mail address is being protected from spambots. You need JavaScript enabled to view it</span><br>
                    </p>
                </div>
                <div class="card-footer">
                    <div class="price">
                    </div>
                    <div class="stats">
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
        </div>
    </div>
    <script src="../assets/js/core/jquery.min.js"></script>

    <script>

        $(document).ready(function () {
            var pageid = $("#hfpageid").val();
            $.ajax({
                url: 'dsr.aspx/SetContent',
                method: 'post',
                contentType: 'application/json',
                data: JSON.stringify({ "pageid": pageid }),
                dataType: 'json',
                success: function (data) {


                    $("#dsrdesig").text(data.d.Title);
                    $("#dsrname").text(data.d.Name);
                    $("#dsrcontent").append(data.d.MainContent);


                }
            });


        });


    </script>
</asp:Content>
