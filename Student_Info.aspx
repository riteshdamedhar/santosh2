<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Default2, App_Web_2filinu3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="text-info">Add Student Details</h1>
<div class="dr">

    <span></span>


</div>
    <asp:Label ID="lblstatus" runat="server" Text="Label" Visible="false"></asp:Label>

    
<div class="workplace">
            
            <div class="row-fluid">
                
                <div class="span12">
                    <div class="head clearfix">
                        <div class="isw-documents"></div>
                        <h1>Student Form</h1>
                    </div>
                    <div class="block-fluid">                        
                        
                        <div class="row-form clearfix">
                            <div class="span3">Name :</div>
                            <div class="span5"><asp:TextBox ID="txtname" runat="server" placeholder="Name"></asp:TextBox><asp:RequiredFieldValidator
        ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ControlToValidate="txtname"  Text="*" ForeColor="Red"
                                    ValidationGroup="stu"></asp:RequiredFieldValidator></div>
                        </div> 

                         <div class="row-form clearfix">
                            <div class="span3">Qualification :</div>
                            <div class="span5"><asp:TextBox ID="txtqualification" runat="server" placeholder="Qualification"></asp:TextBox><asp:RequiredFieldValidator
                                            ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter qualification" ControlToValidate="txtqualification" ValidationGroup="stu" Text="*" ForeColor="Red"></asp:RequiredFieldValidator></div>
                        </div> 


                         <div class="row-form clearfix">
                            <div class="span3">Company Name :</div>
                            <div class="span5"><asp:TextBox ID="txtcompanyname" runat="server" placeholder="Company Name"></asp:TextBox><asp:RequiredFieldValidator
                                                    ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtcompanyname" ValidationGroup="stu" Text="*" ForeColor="Red"></asp:RequiredFieldValidator></div>
                        </div> 

                         <div class="row-form clearfix">
                            <div class="span3">Post :</div>
                            <div class="span5"><asp:TextBox ID="txtpost" runat="server" placeholder="Post"></asp:TextBox><asp:RequiredFieldValidator
                                                            ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtpost" ValidationGroup="stu" Text="*" ForeColor="Red" ></asp:RequiredFieldValidator></div>
                        </div> 

                         <div class="row-form clearfix">
                            <div class="span3">Batch :</div>
                            <div class="span5"><asp:DropDownList ID="DDLyear" runat="server">
                            <asp:ListItem>--Select Year--</asp:ListItem>
                            <asp:ListItem>2012</asp:ListItem>
                            <asp:ListItem>2013</asp:ListItem>
                            <asp:ListItem>2014</asp:ListItem>
                            <asp:ListItem>2015</asp:ListItem>
                            <asp:ListItem>2016</asp:ListItem>
                            <asp:ListItem>2017</asp:ListItem>
                            <asp:ListItem>2018</asp:ListItem>
                            <asp:ListItem>2019</asp:ListItem>
                            <asp:ListItem>2020</asp:ListItem>

                            </asp:DropDownList>
                            
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="DDLyear" ValidationGroup="stu" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div> 

                         <div class="row-form clearfix">
                            <div class="span3">Course :</div>
                            <div class="span5"><asp:DropDownList ID="DDLCourse" runat="server">
                            <asp:ListItem>--Select Course--</asp:ListItem>
                            <asp:ListItem>BCS</asp:ListItem>
                            <asp:ListItem>BCA</asp:ListItem>
                            </asp:DropDownList>
                            
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="DDLCourse" ValidationGroup="stu" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div> 


                        <div class="row-form clearfix">
                            <div class="span3">Photo :</div>
                            <div class="span5"><asp:FileUpload ID="FileUpload1" runat="server" />
                            
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FileUpload1" ValidationGroup="stu" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div> 

                         <div class="row-form clearfix">
                            <div class="span3"></div>
                            <div class="span5"><asp:Button ID="btncancel" runat="server" Text="Cancel"  
                                    class="btn btn-large btn-danger" onclick="btncancel_Click" ValidationGroup="stu"/> <div class="span5">
                                <asp:Button ID="btnsubmit" runat="server" Text="Submit"  
                                    class="btn btn-large btn-danger" onclick="btnsubmit_Click"/></div></div>
                        </div> 
                        
                    </div>
                </div>
                
            </div>
            
            <div class="dr"><span></span></div>                  
            
            
        
        </div>
    <asp:Label ID="lblid" runat="server" Text="Label" Visible="false"></asp:Label>
    <asp:GridView ID="GVstudentdetails" runat="server" AutoGenerateColumns="false" AllowPaging="true" class="table" cellspacing="0" cellpadding="0" width="100%" HeaderStyle-BackColor="gray" AlternatingRowStyle-BackColor="ControlLight">
<AlternatingRowStyle BackColor="ControlLight"></AlternatingRowStyle>
    <Columns>
    <asp:BoundField DataField="AutoId" HeaderText="ID" />
    <asp:BoundField DataField="Name" HeaderText="Name" />
    <asp:BoundField DataField="Qualification" HeaderText="Qualification" />
    <asp:BoundField DataField="Company_name" HeaderText="Company Name" />
    <asp:BoundField DataField="Batch" HeaderText="Batch" />
    <asp:BoundField DataField="Course" HeaderText="Course" />
    <asp:BoundField DataField="Post" HeaderText="Post" />
    
    <asp:TemplateField HeaderText="Photo">
    <ItemTemplate>
    <img src="<%# Eval("Photo") %>" width="100" height="100" />
    </ItemTemplate>
    </asp:TemplateField>


    <asp:TemplateField HeaderText="Edit">
    <ItemTemplate>
        <asp:LinkButton ID="LinkButton1" runat="server" class="icon-pencil"  title="Edit"></asp:LinkButton>
    </ItemTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Delete">
    <ItemTemplate>
        <asp:LinkButton ID="LBDelete" runat="server" class="icon-trash" 
            title="Delete" onclick="LBDelete_Click"  CommandArgument='<%#Eval("AutoId") %>' ></asp:LinkButton>
    </ItemTemplate>
    </asp:TemplateField>
    </Columns>

<HeaderStyle BackColor="Gray"></HeaderStyle>
    </asp:GridView>
</asp:Content>

