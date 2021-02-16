<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="newsForm.aspx.cs" Inherits="DWUIntranet.pgnavibarside.newsForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-6">
              <div class="card ">
                <div class="card-header card-header-rose card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">share</i>
                  </div>
                  <h4 class="card-title">News Form</h4>
                </div>
                <div class="card-body ">

                    <div class="form-group">
                      <label for="NewsTitle" class="bmd-label-floating">Title</label>
                        <asp:TextBox runat="server" class="form-control" type="email" ID="NewsTitle"></asp:TextBox>

                    </div>
                    <div class="form-group">
                      <label for="NewsContent" class="bmd-label-floating">News</label>
                     <asp:TextBox runat="server" class="form-control" type="email" ID="NewsContent"  TextMode="multiline"  Rows="10"></asp:TextBox>
                    </div>
                    <div class="form-check">
                      <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" value=""> Subscribe to newsletter
                        <span class="form-check-sign">
                          <span class="check"></span>
                        </span>
                      </label>
                    </div>


                </div>
                <div class="card-footer ">
                    <asp:Button ID="btnSubmit" class="btn btn-fill btn-rose" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </div>
              </div>
            </div>
              </div>
            </div>
           </div>

</asp:Content>
