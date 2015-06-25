<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Gallary_Images, App_Web_1ncy0hn3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="text-info">Add Gallary Images</h1>
<div class="dr">

    <span></span>


</div>

<asp:Label ID="lblstatus" runat="server" Text="Label" Visible="false"></asp:Label>
<div class="workplace">
            
            <div class="row-fluid">
                
                <div class="span12">
                    <div class="head clearfix">
                        <div class="isw-documents"></div>
                        <h1>Gallary Form</h1>
                    </div>
                    <div class="block-fluid">                        
                        

                        <div class="row-form clearfix">
                            <div class="span3">Gallary Image :</div>
                            <div class="span5"><asp:FileUpload ID="FileUpload1" runat="server" /></div>
                        </div> 

                         <div class="row-form clearfix">
                            <div class="span3"></div>
                            <div class="span5"><asp:Button ID="btncancel" runat="server" Text="Cancel"  
                                    class="btn btn-large btn-danger" /> <div class="span5">
                                <asp:Button ID="btnupload" runat="server" Text="Upload"  
                                    class="btn btn-large btn-danger" onclick="btnupload_Click" /></div></div>
                        </div> 
                        
                    </div>
                </div>
                
            </div>
            
            <div class="dr"><span></span></div>
            
                        
            
            
        
        </div>
</asp:Content>

