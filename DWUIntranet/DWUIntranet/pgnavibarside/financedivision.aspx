﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="financedivision.aspx.cs" Inherits="DWUIntranet.pgnavibarside.financedivision" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
         <input type="hidden" id="hfpageid" value="PG009" />
    <div class="row">
        <div class="col-md-6">
            <div class="card card-profile">
                 <div style="text-align: right;font-size: xxx-large;/* margin-top: 0px; */padding-right: 10px;/* padding-top: 10px; */padding-top: 8px;"><a href="editcontent.aspx?pageid=PG009&pgname=financedivision.aspx"><i  class="fa fa-edit"></i></a></div>
                <div class="card-avatar">
                    <a href="#pablo">
                        <img class="img" src="../assets/pics/PGibbs.png" />
                    </a>
                </div>
                <div class="card-body">
                    <h6 id="fiancedesig" class="card-category text-gray"></h6>
                    <h4 id="fiancename" class="card-title"></h4>

                    <div id="financecontent" class="card-description">
                    </div>
                    <%--                    <a href="#pablo" class="btn btn-rose btn-round">Follow</a>--%>
                </div>
            </div>
        </div>


          <div class="col-md-6">
            <div class="card ">
                <div class="card-header ">
                    <h4 class="card-title">Finance Policies</h4>
                </div>
                <div class="card-body ">
                    <p class="text-danger"><strong>Should load from the DB</strong></p>
                    <table style="background-color: rgb(255, 255, 255); border: 1px solid rgb(192, 192, 192); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;">
                        <tbody>
                            <tr class="odd" style="background-color: transparent;">
                                <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"><a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=1087" target="_blank" title="Download this file (Tender Requirements Procedure.pdf)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                    <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/pdf.gif" alt="Download this file (Tender Requirements Procedure.pdf)" style="border: 0px; vertical-align: text-bottom; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=1087" target="_blank" title="Download this file (Tender Requirements Procedure.pdf)" style="color: rgb(0, 102, 153); font-weight: bold;">GOVERNING POLICY: Tender Requirements Procedure</a></td>
                                <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;">[This procedure applies to all staff at the Divine Word University University involved in the purchase of goods and services and building works at the University.]</td>
                            </tr>
                            <tr class="even" style="background-color: rgb(246, 246, 246);">
                                <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"><a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=648" target="_blank" title="Download this file (Financial_Delegations.pdf)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                    <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/pdf.gif" alt="Download this file (Financial_Delegations.pdf)" style="border: 0px; vertical-align: text-bottom; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=648" target="_blank" title="Download this file (Financial_Delegations.pdf)" style="color: rgb(0, 102, 153); font-weight: bold;">Financial Delegations</a></td>
                                <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;">[Financial delegations detail the level of authorisation required for incurring non-salary expenditure (refer to DWU Structure, DWU Finance Policies and Handbook for Human Resources Policies and Procedures for Personnel specific delegations). The purpose o]</td>
                            </tr>
                            <tr class="odd" style="background-color: transparent;">
                                <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"><a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=536" target="_blank" title="Download this file (DWU_Financial_Policies_2012_(1).pdf)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                    <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/pdf.gif" alt="Download this file (DWU_Financial_Policies_2012_(1).pdf)" style="border: 0px; vertical-align: text-bottom; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=536" target="_blank" title="Download this file (DWU_Financial_Policies_2012_(1).pdf)" style="color: rgb(0, 102, 153); font-weight: bold;">DWU Financial Policies 2012</a></td>
                                <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;">[Effective: 03 January 2013]</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
       
    </div>
        <%--<div class="col-md-6">
           <div class="card ">
                <div class="card-header ">
                    <h4 class="card-title">Finance at Divine Word University</h4>
                </div>
                <div class="card-body" align="justify">
                    <p style="margin: 1em 0px; padding: 0px;">The Bursar is the officer in charge of the business and financial aspects of DWU administration. He is assisted by a&nbsp;<strong>Senior Manager,</strong>&nbsp;Payroll Officer, Purchasing Officer, Systems Management&nbsp;<strong>Financial Accountant,</strong>&nbsp;Accounts Payable, Accounts Receivable,<strong>&nbsp;Management Accountant,</strong>&nbsp;Divisional Accountant and&nbsp; Commercial Accountant</p>
                    <p style="margin: 1em 0px; padding: 0px;">The Finance Division provides financial support in the realisation of the Divine Word University Mission and the Division seeks to:</p>
                    <ul>
                        <li>Develop an effective financial stewardship rather than merely financial control that would improve operational efficiency.</li>
                        <li>Ensure the proper allocation of available financial resources consistent with the operational and development needs of the University.</li>
                        <li>Assure an effective procurement system for goods and services required by the different units of the University.</li>
                        <li>Maintain an accounting system that would generate accurate and timely financial information for decision-making.</li>
                        <li>Ascertain the availability of funds for the operational and development needs of the University through efficient cash management.</li>
                        <li>Maintain an efficient and effective academic information system responsive to the educational needs of the clientele and directly supportive of administrative decision-making.</li>
                    </ul>
                    <p style="margin: 1em 0px; padding: 0px;">
                        <em><strong>DWU accounts are audited by&nbsp;</strong><a href="http://www.pwcglobal.com/" target="_blank" style="color: rgb(0, 102, 153); text-decoration-line: underline;"><strong>Price Waterhouse Coopers</strong></a><strong>&nbsp;annually.</strong></em><br>
                    </p>
                </div>
            </div>
        </div>--%>
      
    </div>

      <script src="../assets/js/core/jquery.min.js"></script>

    <script>

    $(document).ready(function () {
        var pageid =$("#hfpageid").val();
        $.ajax({
            url: 'financedivision.aspx/SetContent',
            method: 'post',
            contentType:'application/json',
            data: JSON.stringify({ "pageid": pageid }),
            dataType:'json',
            success: function (data) {


                $("#fiancedesig").text(data.d.Title);
                $("#fiancename").text(data.d.Name);
                $("#financecontent").append(data.d.MainContent);


            }
        });


    });


</script>
</asp:Content>
