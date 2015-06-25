<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Add_News, App_Web_2filinu3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="text-info">Add News</h1>
<div class="dr">

    <span></span>


</div>

<asp:Label ID="lblstatus" runat="server" Text="Label" Visible="false"></asp:Label>
    <asp:Label ID="lblid" runat="server" Text="Label" Visible="false"></asp:Label>
<div class="workplace">
            
            <div class="row-fluid">
                
                <div class="span12">
                    <div class="head clearfix">
                        <div class="isw-documents"></div>
                        <h1>NEWS</h1>
                    </div>
                    <div class="block-fluid">                        
                        

                        <div class="row-form clearfix">
                            <div class="span3">Add News :</div>
                            
                         <asp:TextBox ID="txtnews" runat="server" TextMode="MultiLine"></asp:TextBox><asp:RequiredFieldValidator
                             ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="RequiredFieldValidator" ControlToValidate="txtnews" 
                                ValidationGroup="news" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div> 

                         <div class="row-form clearfix">
                            <div class="span3"></div>
                            <div class="span5"><asp:Button ID="btncancel" runat="server" Text="Cancel"  
                                    class="btn btn-large btn-danger" /> <div class="span5">
                                <asp:Button ID="btnews" runat="server" Text="Submit"  ValidationGroup="news" 
                                    class="btn btn-large btn-danger" onclick="btnews_Click"  /></div></div>
                        </div> 
                        
                    </div>
                </div>
                
            </div>
            
            <div class="dr"><span></span></div>
            
                        
            
            
        
        </div>

        <asp:GridView ID="GVNews" runat="server" AutoGenerateColumns="false" AllowPaging="true" class="table" cellspacing="0" cellpadding="0" width="100%" HeaderStyle-BackColor="gray" AlternatingRowStyle-BackColor="ControlLight">
<AlternatingRowStyle BackColor="ControlLight"></AlternatingRowStyle>
    <Columns>
    <asp:BoundField DataField="AutoId" HeaderText="ID" />
    <asp:BoundField DataField="News" HeaderText="News" />
      <asp:TemplateField HeaderText="Edit">
    <ItemTemplate>
        <asp:LinkButton ID="LBEdit" runat="server" class="icon-pencil"  title="Edit"></asp:LinkButton>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Delete">
    <ItemTemplate>
        <asp:LinkButton ID="LBDelete" runat="server" class="icon-trash" 
            title="Delete"   CommandArgument='<%#Eval("AutoId") %>' 
            onclick="LBDelete_Click" ></asp:LinkButton>
    </ItemTemplate>
    </asp:TemplateField>
    </Columns>

<HeaderStyle BackColor="Gray"></HeaderStyle>
    </asp:GridView>
</asp:Content>

