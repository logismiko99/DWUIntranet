<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="hrmanagement.aspx.cs" Inherits="DWUIntranet.pgnavibarside.hrmanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <input type="hidden" id="hfpageid" value="PG008" />
    <div class="row">
        <div class="col-md-8">
            <div class="card card-profile">
                 <div style="text-align: right;font-size: xxx-large;/* margin-top: 0px; */padding-right: 10px;/* padding-top: 10px; */padding-top: 8px;"><a href="editcontent.aspx?pageid=PG008&pgname=hrmanagement.aspx"><i  class="fa fa-edit"></i></a></div>
                <div class="card-avatar">
                    <a href="#pablo">
                        <img class="img" src="../assets/pics/PGibbs.png" />
                    </a>
                </div>
                <div class="card-body">
                    <h6 id="hrdesig" class="card-category text-gray"></h6>
                    <h4 id="hrname" class="card-title"></h4>

                    <div id="hrcontent" class="card-description">
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
            url: 'hrmanagement.aspx/SetContent',
            method: 'post',
            contentType:'application/json',
            data: JSON.stringify({ "pageid": pageid }),
            dataType:'json',
            success: function (data) {


                $("#hrdesig").text(data.d.Title);
                $("#hrname").text(data.d.Name);
                $("#hrcontent").append(data.d.MainContent);


            }
        });


    });


</script>

    <div class="row" style="margin: 2em 0px;">
        <div class="col-md-12 ml-auto mr-auto">
            <div class="page-categories">
                <ul class="nav nav-pills nav-pills-success justify-content-center" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#DWUPolicies" role="tablist">DWU Policies</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#StaffDevelopment" role="tablist">Staff Development</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#DWUForms" role="tablist">DWU Forms</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#JobDescriptions" role="tablist">Job Descriptions</a>
                    </li>
                </ul>
                <div class="tab-content tab-space tab-subcategories">
                    <div class="tab-pane active" id="DWUPolicies">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card ">
                                    <div class="card-body ">
                                        <ul class="nav nav-pills nav-pills-info" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" data-toggle="tab" href="#Academic" role="tablist">Academic</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#Administration" role="tablist">Administration</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#Promotion" role="tablist">Promotion</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#IncrementalProgression" role="tablist">Incremental Progression</a>
                                            </li>
                                        </ul>
                                        <div class="tab-content tab-space">
                                            <div class="tab-pane active" id="Academic">
                                                <p class="text-danger"><strong>Should load from the DB</strong></p>
                                                <p style="margin: 1em 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">
                                                    <a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=2519" target="_blank" title="Download this file (HR24 Policy on Teaching Fellow (2015).pdf)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                                        <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/pdf.gif" alt="Download this file (HR24 Policy on Teaching Fellow (2015).pdf)" style="vertical-align: text-bottom; border: 0px; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=2519" target="_blank" title="Download this file (HR24 Policy on Teaching Fellow (2015).pdf)" style="color: rgb(0, 102, 153); font-weight: bold;">HR24 Policy on Teaching Fellow (2015).pdf</a>
                                                </p>
                                                <p style="margin: 1em 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">
                                                    <a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=1655" target="_blank" title="Download this file (AC8 Academic Committees Policy (2017).docx)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                                        <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/wordx.gif" alt="Download this file (AC8 Academic Committees Policy (2017).docx)" style="vertical-align: text-bottom; border: 0px; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=1655" target="_blank" title="Download this file (AC8 Academic Committees Policy (2017).docx)" style="color: rgb(0, 102, 153); font-weight: bold;">AC8 Academic Committees Policy (August 2017)</a>
                                                </p>
                                                <p style="margin: 1em 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">
                                                    <a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=1546" target="_blank" title="Download this file (AC13 Matriculation policy (2017).docx)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                                        <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/wordx.gif" alt="Download this file (AC13 Matriculation policy (2017).docx)" style="vertical-align: text-bottom; border: 0px; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=1546" target="_blank" title="Download this file (AC13 Matriculation policy (2017).docx)" style="color: rgb(0, 102, 153); font-weight: bold;">AC13 Matriculation Policy (2017)</a>[&nbsp;]
                                                </p>
                                            </div>
                                            <div class="tab-pane" id="Administration">
                                                <table style="background-color: rgb(255, 255, 255); border: 1px solid rgb(192, 192, 192); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;">
                                                    <tbody>
                                                        <tr class="even" style="background-color: rgb(246, 246, 246);">
                                                            <td>
                                                                <p class="text-danger"><strong>Should load from the DB</strong></p>
                                                            </td>
                                                        </tr>
                                                        <tr class="even" style="background-color: rgb(246, 246, 246);">
                                                            <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"><a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=1317" target="_blank" title="Download this file (DWU Safety and Security Policy.docx)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                                                <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/wordx.gif" alt="Download this file (DWU Safety and Security Policy.docx)" style="vertical-align: text-bottom; border: 0px; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=1317" target="_blank" title="Download this file (DWU Safety and Security Policy.docx)" style="color: rgb(0, 102, 153); font-weight: bold;">Safety and Security Policy (Sept 2015)</a></td>
                                                            <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;">[The purpose of this policy is to make clear the importance of academic honesty and integrity in all University endeavours by all academic staff, researchers, administrators and students. ]<br>
                                                                <br>
                                                            </td>
                                                        </tr>
                                                        <tr class="odd" style="background-color: transparent;">
                                                            <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"><a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=843" target="_blank" title="Download this file (Disciplinary_Decision_of_Dismissal_-2.doc)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                                                <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/word.gif" alt="Download this file (Disciplinary_Decision_of_Dismissal_-2.doc)" style="vertical-align: text-bottom; border: 0px; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=843" target="_blank" title="Download this file (Disciplinary_Decision_of_Dismissal_-2.doc)" style="color: rgb(0, 102, 153); font-weight: bold;">Disciplinary Decision of Dismissal</a></td>
                                                            <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;">[Disciplinary Decision of Dismissal]<br>
                                                                <br>
                                                                <br>
                                                                <br>
                                                                <br>
                                                            </td>
                                                        </tr>
                                                        <tr class="even" style="background-color: rgb(246, 246, 246);">
                                                            <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"><a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=842" target="_blank" title="Download this file (Discission_of_suspension_without_Pay-1.doc)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                                                <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/word.gif" alt="Download this file (Discission_of_suspension_without_Pay-1.doc)" style="vertical-align: text-bottom; border: 0px; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=842" target="_blank" title="Download this file (Discission_of_suspension_without_Pay-1.doc)" style="color: rgb(0, 102, 153); font-weight: bold;">Disciplinary Decision of Suspension without Pa</a></td>
                                                            <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;">[Disciplinary Decision of Suspension without Pay]</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="tab-pane" id="Promotion">
                                                <p class="text-danger"><strong>Should load from the DB</strong></p>
                                                <p style="margin: 1em 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">
                                                    <br>
                                                </p>
                                                <ul style="margin: 1em 0px; padding: 0px; list-style: none; font-size: 10.4px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; background-color: rgb(255, 255, 255);">
                                                    <li style="padding-left: 30px; background: url(&quot;../images/bullet.gif&quot;) 18px 8px no-repeat; line-height: 23.4px; font-size: 13px;"><a href="https://intranet.dwu.ac.pg/images/stories/policies/promotion/StaffAppraisalAdminAncillary.doc" target="_blank" style="color: rgb(0, 102, 153); text-decoration-line: underline;">Appraisal Form (Admin/Ancillary Staff)</a>&nbsp;(DOC)&nbsp;<span style="color: rgb(153, 51, 0);">(Revised 11/2013)</span></li>
                                                    <li style="padding-left: 30px; background: url(&quot;../images/bullet.gif&quot;) 18px 8px no-repeat; line-height: 23.4px; font-size: 13px;"><a href="https://intranet.dwu.ac.pg/images/stories/HRM_Articles_2020/Revised_Salary_Scheme_July_2019.pdf" style="color: rgb(0, 102, 153); text-decoration-line: underline;">DWU Salary Scheme&nbsp;</a>(PDF)&nbsp;<span style="color: rgb(153, 51, 0);">Update 12/07/2019<br>
                                                    </span></li>
                                                    <li style="padding-left: 30px; background: url(&quot;../images/bullet.gif&quot;) 18px 8px no-repeat; line-height: 23.4px; font-size: 13px;"><a href="https://intranet.dwu.ac.pg/images/stories/policies/promotion/FACULTY_MEMBERS_DWU_2011.pdf" target="_blank" style="color: rgb(0, 102, 153); text-decoration-line: underline;">DWU Faculty Members</a>&nbsp;(PDF)&nbsp;<span style="color: rgb(153, 51, 0);">Update 05/11/2013</span></li>
                                                    <li style="padding-left: 30px; background: url(&quot;../images/bullet.gif&quot;) 18px 8px no-repeat; line-height: 23.4px; font-size: 13px;"><a href="https://intranet.dwu.ac.pg/images/stories/policies/promotion/Promotion_Application_Form_Academic_PNBB.doc" target="_blank" style="color: rgb(0, 102, 153); text-decoration-line: underline;">Promotion Application form -&nbsp;Academic Staff</a>&nbsp;(DOC)&nbsp;<span style="color: rgb(153, 51, 0);">(revised 5/11/2013)</span></li>
                                                    <li style="padding-left: 30px; background: url(&quot;../images/bullet.gif&quot;) 18px 8px no-repeat; line-height: 23.4px; font-size: 13px;"><a href="https://intranet.dwu.ac.pg/images/stories/policies/promotion/PromotionApplicationForm_AdminStaff.pdf" target="_blank" style="color: rgb(0, 102, 153); text-decoration-line: underline;">Promotion Application Form - Administrative Staff</a>&nbsp;(PDF)&nbsp;<span style="color: rgb(153, 51, 0);">Revised 5/11/2013<br>
                                                    </span></li>
                                                </ul>
                                                <table style="background-color: transparent; border: 1px solid rgb(192, 192, 192);">
                                                    <caption style="font-size: 14.3px; font-weight: bold; margin-top: 4px;">&nbsp;</caption>
                                                    <tbody>
                                                        <tr class="odd" style="background-color: transparent;">
                                                            <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"><a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=875" target="_blank" title="Download this file (DWU_Academic_Portfolio.pdf)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                                                <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/pdf.gif" alt="Download this file (DWU_Academic_Portfolio.pdf)" style="border: 0px; vertical-align: text-bottom; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=875" target="_blank" title="Download this file (DWU_Academic_Portfolio.pdf)" style="color: rgb(0, 102, 153); font-weight: bold;">DWU_Academic_Portfolio.pdf</a></td>
                                                            <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;">[&nbsp;]</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="tab-pane" id="IncrementalProgression">
                                                <p class="text-danger"><strong>Should load from the DB</strong></p>
                                                <br>
                                                <ul style="margin: 1em 0px; padding: 0px; list-style: none; font-size: 10.4px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; background-color: rgb(255, 255, 255);">
                                                    <li style="padding-left: 30px; background: url(&quot;../images/bullet.gif&quot;) 18px 8px no-repeat; line-height: 23.4px; font-size: 13px;"><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=1251" target="_blank" title="Download this file (Incremental_Progression_at_Divine_Word_University-1.doc)" style="color: rgb(0, 102, 153); text-decoration-line: underline;">Incremental Progression at Divine Word University for Academic and Administrative Staff&nbsp;&nbsp;</a><span class="at_url">(DOC)&nbsp;<span style="color: rgb(153, 51, 0);">( revised 06/2013)</span></span><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=1251" target="_blank" title="Download this file (Incremental_Progression_at_Divine_Word_University-1.doc)" style="color: rgb(0, 102, 153); text-decoration-line: underline;"></a></li>
                                                    <li style="padding-left: 30px; background: url(&quot;../images/bullet.gif&quot;) 18px 8px no-repeat; line-height: 23.4px; font-size: 13px;"><a target="_blank" href="https://intranet.dwu.ac.pg/images/stories/policies/progression/Incremental_Progression_or_Cash_Bonus_DWU_Policy_Procedures.doc" style="color: rgb(0, 102, 153); text-decoration-line: underline;">Incremental Progression or Cash Bonus Available to All Staff - Policy and Procedures</a>&nbsp;(DOC) (<span style="color: rgb(153, 51, 0);">revised 06/2013)</span></li>
                                                    <li style="padding-left: 30px; background: url(&quot;../images/bullet.gif&quot;) 18px 8px no-repeat; line-height: 23.4px; font-size: 13px;"><a href="https://intranet.dwu.ac.pg/images/stories/policies/progression/Increment_or_Cash_Bonus_Application_Form_Academic_PDF_Form.pdf" target="_blank" style="color: rgb(0, 102, 153); text-decoration-line: underline;">Incremental Progression or Cash Bonus Application Form for Academic Staff</a>&nbsp;(PDF Form)&nbsp;<span style="color: rgb(153, 51, 0);">(revised 06/2013)</span></li>
                                                    <li style="padding-left: 30px; background: url(&quot;../images/bullet.gif&quot;) 18px 8px no-repeat; line-height: 23.4px; font-size: 13px;"><a target="_blank" href="https://intranet.dwu.ac.pg/images/stories/policies/progression/Increment_Progression_or_Cash_Bonus_Form_AdminAncillary_Staff_PDF_Form.pdf" style="color: rgb(0, 102, 153); text-decoration-line: underline;">Incremental Progression or Cash Bonus Application form for Admin and Ancillary Staff</a>&nbsp;(PDF Form)<span style="color: rgb(153, 51, 0);">&nbsp;(revised 06/2013)</span></li>
                                                </ul>
                                                <p class="attachmentsContainer" style="font-size: 13px; clear: both; margin: 0px 0px 0.5em; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;">
                                                    <div class="attachmentsList" id="attachmentsList_com_content_article_571">
                                                        <table style="background-color: transparent; border: 1px solid rgb(192, 192, 192);">
                                                            <caption style="font-size: 14.3px; font-weight: bold; margin-top: 4px;">&nbsp;</caption>
                                                            <tbody>
                                                                <tr class="odd" style="background-color: transparent;">
                                                                    <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"><a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=1251" target="_blank" title="Download this file (Incremental_Progression_at_Divine_Word_University-1.doc)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                                                        <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/word.gif" alt="Download this file (Incremental_Progression_at_Divine_Word_University-1.doc)" style="border: 0px; vertical-align: text-bottom; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=1251" target="_blank" title="Download this file (Incremental_Progression_at_Divine_Word_University-1.doc)" style="color: rgb(0, 102, 153); font-weight: bold;">Incremental Progression at Divine Word University for Academic and Administrativ</a></td>
                                                                    <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;">[Incremental Progression at Divine Word University for Academic and Administrative Staff]</td>
                                                                </tr>
                                                                <tr class="even" style="background-color: rgb(246, 246, 246);">
                                                                    <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"><a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=686" target="_blank" title="Download this file (2014_Record_of_Academic_Performance.docx)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                                                        <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/wordx.gif" alt="Download this file (2014_Record_of_Academic_Performance.docx)" style="border: 0px; vertical-align: text-bottom; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=686" target="_blank" title="Download this file (2014_Record_of_Academic_Performance.docx)" style="color: rgb(0, 102, 153); font-weight: bold;">2014_Record_of_Academic_Performance.docx</a></td>
                                                                    <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;">[This document was introduced in 2013 to replace the performance appraisal document used in previous years. ]</td>
                                                                </tr>
                                                                <tr class="odd" style="background-color: transparent;">
                                                                    <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"><a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=876" target="_blank" title="Download this file (DWU_Academic_Portfolio.pdf)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                                                        <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/pdf.gif" alt="Download this file (DWU_Academic_Portfolio.pdf)" style="border: 0px; vertical-align: text-bottom; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=876" target="_blank" title="Download this file (DWU_Academic_Portfolio.pdf)" style="color: rgb(0, 102, 153); font-weight: bold;">DWU_Academic_Portfolio.pdf</a></td>
                                                                    <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;">[&nbsp;]</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </p>
                                                <table style="background-color: transparent; border: 1px solid rgb(192, 192, 192);">
                                                    <tbody>
                                                        <tr class="odd" style="background-color: transparent;">
                                                            <td class="at_filename" style="background-color: transparent; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; vertical-align: top; padding-left: 3px; padding-right: 3px;"></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="StaffDevelopment">
                        <div class="card">
                            <div class="card-body">
                                <table style="background-color: transparent; border: 1px solid rgb(192, 192, 192);">
                                    <tbody>
                                        <tr class="odd" style="background-color: transparent;">
                                            <td class="at_filename" style="background-color: transparent; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; vertical-align: top; padding-left: 3px; padding-right: 3px;"></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <p style="margin: 1em 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">To be read in conjunction with the Staff Development Policy.</p>
                                <p style="margin: 1em 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="color: rgb(255, 102, 0);"><em><span style="font-family: verdana, geneva; font-size: 12pt;">Links to Overseas Scholarships and Fellowships Opportunities</span></em></span></p>
                                <br style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">
                                <p style="margin: 1em 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><span style="text-decoration-line: underline;"><span style="font-size: 12pt; color: rgb(255, 102, 0);"><em><span style="font-family: verdana, geneva;"><a target="_blank" href="https://intranet.dwu.ac.pg/attachments/EdUSA%20Weekly%20Update%20No%20167%20February%2015%202010.pdf" style="color: rgb(0, 102, 153);"><span style="color: rgb(255, 102, 0);">Education USA</span></a></span></em></span></span></p>
                                <p>
                                    <hr style="border-top-color: rgb(204, 204, 204); height: 1px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">
                                </p>
                                <p style="margin: 1em 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><em><span style="font-family: verdana, geneva; font-size: 12pt; color: rgb(255, 102, 0);">Course Finders</span></em></p>
                                <p>
                                    <a href="https://intranet.dwu.ac.pg/index.php?view=weblink&amp;catid=25&amp;id=9&amp;option=com_weblinks" target="_blank" style="color: rgb(0, 102, 153); text-decoration-line: underline; font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">
                                        <img src="https://intranet.dwu.ac.pg/modules/mod_p30weblinks/tmpl/link.gif" style="border-width: initial; border-color: initial; border-image: initial;">&nbsp;Useful Website Addresses (DOC)</a>
                                </p>
                                <p>
                                    <a href="https://intranet.dwu.ac.pg/index.php?view=weblink&amp;catid=25&amp;id=8&amp;option=com_weblinks" target="_blank" style="color: rgb(0, 102, 153); text-decoration-line: underline; font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">
                                        <img src="https://intranet.dwu.ac.pg/modules/mod_p30weblinks/tmpl/link.gif" style="border-width: initial; border-color: initial; border-image: initial;">&nbsp;Australian Course and Education Institutions Search</a>
                                </p>
                                <p style="margin: 1em 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">Further information for this page, please contact HRM.</p>
                                <br>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="DWUForms">
                        <div class="card">
                            <div class="card-body">
                                <table style="background-color: rgb(255, 255, 255); border: 1px solid rgb(192, 192, 192); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <p class="text-danger">Should Load from the DB</p>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr class="odd" style="background-color: transparent;">
                                            <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"><a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=2249" target="_blank" title="Download this file (DWU Employee Exit Interview Form.docx)" style="color: rgb(102, 51, 0); font-weight: bold; padding-right: 4px;">
                                                <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/wordx.gif" alt="Download this file (DWU Employee Exit Interview Form.docx)" style="border: 0px; vertical-align: text-bottom; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=2249" target="_blank" title="Download this file (DWU Employee Exit Interview Form.docx)" style="color: rgb(0, 102, 153); font-weight: bold;">DWU Employee Exit Interview Form.docx</a></td>
                                            <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;">[&nbsp;]</td>
                                        </tr>
                                        <tr class="even" style="background-color: rgb(246, 246, 246);">
                                            <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"><a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=2221" target="_blank" title="Download this file (Performance Appraisal Form (all staff) 2019.docx)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                                <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/wordx.gif" alt="Download this file (Performance Appraisal Form (all staff) 2019.docx)" style="border: 0px; vertical-align: text-bottom; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=2221" target="_blank" title="Download this file (Performance Appraisal Form (all staff) 2019.docx)" style="color: rgb(0, 102, 153); font-weight: bold;">Performance Appraisal Form (all staff) 2019</a></td>
                                            <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;">[&nbsp;]</td>
                                        </tr>
                                        <tr class="odd" style="background-color: transparent;">
                                            <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"><a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=1802" target="_blank" title="Download this file (DWU_Visitor_Form xxx.doc)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                                <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/word.gif" alt="Download this file (DWU_Visitor_Form xxx.doc)" style="border: 0px; vertical-align: text-bottom; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=1802" target="_blank" title="Download this file (DWU_Visitor_Form xxx.doc)" style="color: rgb(0, 102, 153); font-weight: bold;">DWU_Visitor_Form xxx.doc</a></td>
                                            <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;">[&nbsp;]</td>
                                        </tr>
                                        <tr class="even" style="background-color: rgb(246, 246, 246);">
                                            <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"><a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=775" target="_blank" title="Download this file (Staff_Clearance_Form_Rev_June_2013-.docx)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                                <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/wordx.gif" alt="Download this file (Staff_Clearance_Form_Rev_June_2013-.docx)" style="border: 0px; vertical-align: text-bottom; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=775" target="_blank" title="Download this file (Staff_Clearance_Form_Rev_June_2013-.docx)" style="color: rgb(0, 102, 153); font-weight: bold;">Staff_Clearance_Form_Rev_June_2013-.docx</a></td>
                                            <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;">[revised 06/2013]</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="JobDescriptions">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card ">
                                    <div class="card-body ">
                                        <ul class="nav nav-pills nav-pills-info" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" data-toggle="tab" href="#jobAcademic" role="tablist">Academic</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#jobAdministration" role="tablist">Administration</a>
                                            </li>
                                        </ul>
                                        <div class="tab-content tab-space">
                                            <div class="tab-pane active" id="jobAcademic">
                                                <p class="text-danger"><strong>Should load from the DB</strong></p>
                                                <br>
                                                <table style="background-color: rgb(255, 255, 255); border: 1px solid rgb(192, 192, 192); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;">
                                                    <tbody>
                                                        <tr class="odd" style="background-color: transparent;">
                                                            <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"><a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=2625" target="_blank" title="Download this file (DEAN OF FACULTY.docx)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                                                <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/wordx.gif" alt="Download this file (DEAN OF FACULTY.docx)" style="border: 0px; vertical-align: text-bottom; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=2625" target="_blank" title="Download this file (DEAN OF FACULTY.docx)" style="color: rgb(0, 102, 153); font-weight: bold;">DEAN OF FACULTY.docx</a></td>
                                                            <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;">[&nbsp;]</td>
                                                        </tr>
                                                        <tr class="even" style="background-color: rgb(246, 246, 246);">
                                                            <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"><a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=2359" target="_blank" title="Download this file (CTHR Director Position Description.docx)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                                                <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/wordx.gif" alt="Download this file (CTHR Director Position Description.docx)" style="border: 0px; vertical-align: text-bottom; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=2359" target="_blank" title="Download this file (CTHR Director Position Description.docx)" style="color: rgb(0, 102, 153); font-weight: bold;">CTHR Director Position Description.docx</a></td>
                                                            <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;">[&nbsp;]</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="tab-pane" id="jobAdministration">
                                                <p class="text-danger"><strong>Should load from the DB</strong></p>
                                                <table style="background-color: rgb(255, 255, 255); border: 1px solid rgb(192, 192, 192); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;">
                                                    <tbody>
                                                        <tr class="odd" style="background-color: transparent;">
                                                            <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"></td>
                                                            <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"></td>
                                                        </tr>
                                                        <tr class="even" style="background-color: rgb(246, 246, 246);">
                                                            <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"></td>
                                                            <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <table style="background-color: rgb(255, 255, 255); border: 1px solid rgb(192, 192, 192); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px;">
                                                    <tbody>
                                                        <tr class="odd" style="background-color: transparent;">
                                                            <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"><a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=2237" target="_blank" title="Download this file (Human Resource Officer, SBC Wewak Campus.docx)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                                                <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/wordx.gif" alt="Download this file (Human Resource Officer, SBC Wewak Campus.docx)" style="border: 0px; vertical-align: text-bottom; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=2237" target="_blank" title="Download this file (Human Resource Officer, SBC Wewak Campus.docx)" style="color: rgb(0, 102, 153); font-weight: bold;">Human Resource Officer, SBC Wewak Campus.docx</a></td>
                                                            <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;">[&nbsp;]</td>
                                                        </tr>
                                                        <tr class="even" style="background-color: rgb(246, 246, 246);">
                                                            <td class="at_filename" style="vertical-align: top; padding-left: 3px; padding-right: 3px;"><a class="at_icon" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=2236" target="_blank" title="Download this file (Human Resource Officer, Rabaul Campus.docx)" style="color: rgb(0, 102, 153); font-weight: bold; padding-right: 4px;">
                                                                <img src="https://intranet.dwu.ac.pg/components/com_attachments/media/icons/wordx.gif" alt="Download this file (Human Resource Officer, Rabaul Campus.docx)" style="border: 0px; vertical-align: text-bottom; margin: 0px;"></a><a class="at_url" href="https://intranet.dwu.ac.pg/index.php?option=com_attachments&amp;task=download&amp;id=2236" target="_blank" title="Download this file (Human Resource Officer, Rabaul Campus.docx)" style="color: rgb(0, 102, 153); font-weight: bold;">Human Resource Officer, Rabaul Campus.docx</a></td>
                                                            <td class="at_description" style="vertical-align: top; padding-left: 3px; padding-right: 3px;">[&nbsp;]</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <br>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
