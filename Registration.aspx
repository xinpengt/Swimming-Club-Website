<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/member.Master" CodeBehind="Registration.aspx.cs" Inherits="GroupAss.Registration" MaintainScrollPositionOnPostback="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Main" runat="server">


            <div class="card">
          <div class="card-body">
         <h1 style="background-color: #d6d6d6">SIGN UP FORM</h1>
        <hr/>
      <div class="tab-content pt-3">
      <div class="tab-pane active">
      <div class="row">
        <div class="col">
        <div class="form-group">
            <asp:Label runat="server">Username</asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" class="form-control" style="width:800px"/>
                <asp:RegularExpressionValidator ID="rvfTxtUsername" runat="server" ErrorMessage="Username must be between 8-16 characters long" ControlToValidate="txtUsername" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{8,16}$"></asp:RegularExpressionValidator>
                </div>
        </div>
          </div>
           <div class="row">
        <div class="col">
            <div class="form-group">
            <asp:Label runat="server">First Name</asp:Label>
                <asp:TextBox runat="server" ID="Fname" TextMode="SingleLine" class="form-control" style="width:800px"/>
                <asp:RequiredFieldValidator runat="server" 
                    ControlToValidate="Fname"
                    ForeColor="Red" BackColor="PowderBlue" 
                    ErrorMessage="Please Enter Your First Name"/>
            </div>
            </div>
        </div>
                <div class="row">
        <div class="col">
                        <div class="form-group">
            <asp:Label runat="server">Last Name</asp:Label>
                <asp:TextBox runat="server" ID="Lname" TextMode="SingleLine" class="form-control" style="width:800px"/>
                <asp:RequiredFieldValidator runat="server" 
                    ControlToValidate="Lname"
                    ForeColor="Red" BackColor="PowderBlue"
                    ErrorMessage="Please Enter Your Last Name."/>
        </div>
                    </div>
                            </div>

        <div class="row">
        <div class="col">
                        <div class="form-group">
            <asp:Label runat="server">Date Of Birth</asp:Label>
                <asp:TextBox runat="server" ID="Dob" TextMode="Date" class="form-control" style="width:800px"/>
                <asp:RequiredFieldValidator runat="server" 
                    ControlToValidate="Dob"
                    ForeColor="Red"
                    ErrorMessage="Please Enter Your Date Of Birth."/>
        </div>
              </div>
                </div>
                  <div class="row">
        <div class="col">
                     <div class="form-group">
            <asp:Label runat="server">Contact Number</asp:Label>
                <asp:TextBox runat="server" ID="ContactNo" TextMode="Phone" class="form-control" style="width:800px"/>
                <asp:RequiredFieldValidator runat="server" 
                    ControlToValidate="ContactNo"
                    ErrorMessage="Malaysian Mobile Number Only!"
                    ValidationExpression="^(\+?6?01)[0-46-9]-*[0-9]{7,8}$"
                    ForeColor="Red"/>
        </div>     
        </div></div>
        <div class="row">
        <div class="col">
                    <div class="form-group">
            <asp:Label runat="server" >Gender</asp:Label>
            <div class="col-md-10">
                <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="M">Male</asp:ListItem>
                    <asp:ListItem Value="F">Female</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="reqvalidate" runat="server" 
                    ControlToValidate="rblGender"
                    ForeColor="Red"
                    ErrorMessage="You Must Select Your Gender!"/>
            </div>
        </div>     
        </div>
        </div>
    <div class="row">
        <div class="col">
                <div class="form-group">
            <asp:Label runat="server">E-mail</asp:Label>
                <asp:TextBox runat="server" ID="Email" TextMode="Email" class="form-control" style="width:800px"/>
                <asp:RequiredFieldValidator runat="server" 
                    ControlToValidate="Email"
                    ForeColor="Red"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ErrorMessage="Your E-Mail Is Required!"/>
        </div>
        </div>
        </div>
        <div class="row">
        <div class="col">
                  <div class="form-group">
            <asp:Label runat="server">Address</asp:Label>
                <asp:TextBox runat="server" ID="Address" TextMode="MultiLine" Rows="5" class="form-control" style="width:800px"/>
                <asp:RequiredFieldValidator runat="server" 
                    ControlToValidate="Address"
                    ForeColor="Red"
                    ErrorMessage="The Field Cannot Be Empty!"/>
            </div>
        </div>
        </div>
              <div class="row">
        <div class="col">
                <div class="form-group">
            <asp:Label runat="server">Security Question</asp:Label>

                <asp:DropDownList ID="ddlSec_Ques" runat="server" class="form-control" style="width:800px" >
                    <asp:ListItem>What Is Your Favourite Location?</asp:ListItem>
                    <asp:ListItem>What Is Your Favourite Sport?</asp:ListItem>
                    <asp:ListItem>Who Is Your Role Model?</asp:ListItem>
                    <asp:ListItem>What Is Your Favourite Hobby?</asp:ListItem>
                    <asp:ListItem>Who Is Your Favourite Parent?</asp:ListItem>
                    <asp:ListItem>What Is Your Dream Car?</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" 
                    ControlToValidate="ddlSec_Ques"
                    ForeColor="Red"
                    ErrorMessage="You Must Select A Security Question"/>
        </div>
        </div>
        </div>
        <div class="row">
        <div class="col">
                <div class="form-group">
            <asp:Label runat="server">Security Answer</asp:Label>
           
                <asp:TextBox runat="server" ID="Sec_Ans" TextMode="SingleLine" class="form-control" style="width:800px"/>
                <asp:RequiredFieldValidator runat="server" 
                    ControlToValidate="Sec_Ans"
                    ForeColor="Red" 
                    ErrorMessage="The Answer Field Cannot Be Empty!"/>
        </div>
       </div>
        </div>
    <div class="row">
        <div class="col">
        <div class="form-group">
            <asp:Label runat="server">Password</asp:Label>
                <asp:TextBox runat="server" ID="Password" TextMode="Password" class="form-control" style="width:800px"/>
                <asp:RequiredFieldValidator runat="server" 
                    ControlToValidate="Password"
                    ForeColor="Red" BackColor="PowderBlue" 
                    ErrorMessage="The Password Field Is Required!"/>
            </div>
            </div>
        </div>
              <div class="row">
        <div class="col">
        <div class="form-group">
            <asp:Label runat="server">Confirm password</asp:Label>
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" class="form-control" style="width:800px"/>
                <asp:RequiredFieldValidator runat="server" 
                    ControlToValidate="ConfirmPassword"
                    ForeColor="Red" BackColor="PowderBlue" 
                    Display="Dynamic" 
                    ErrorMessage="Please Enter Your Confirmed Password." />
                <asp:CompareValidator runat="server" 
                    ControlToCompare="Password" 
                    ControlToValidate="ConfirmPassword"
                    ForeColor="Red" BackColor="PowderBlue" 
                    Display="Dynamic" 
                    ErrorMessage="The Passwords Do Not Match!"/>
            </div>
                        </div>
        </div>
        <div class="row">
        <div class="col justify-content-center">
        <div class="form-group">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" class="btn btn-primary"/>
                <br />
                <asp:Label ID="lblRegError" runat="server"></asp:Label>
        </div>
    </div>
        </div>
     </div>
    </div>
         </div>
    </div>
</asp:Content>