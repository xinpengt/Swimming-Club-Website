<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/member.Master" CodeBehind="login.aspx.cs" Inherits="GroupAss.login" MaintainScrollPositionOnPostback="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Main" runat="server">
                     <h1 style="background-color: #d6d6d6">LOG IN FORM</h1>
                    <hr />
                   <div style="background-color:#DBF3FA">
                    <asp:MultiView ID="logForgPage" runat="server" ActiveViewIndex="0">
                        <asp:View ID="view1" runat="server">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" AssociatedControlID="Username">Username:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" ID="Username"/>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator runat="server" 
                                            ControlToValidate="Username"
                                            ForeColor="Red" BackColor="LightBlue" 
                                            ErrorMessage="Please Enter Valid Username!." />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" ID="Password" TextMode="Password"/>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator runat="server" 
                                            ControlToValidate="Password" 
                                            ForeColor="Red" BackColor="LightBlue" 
                                            ErrorMessage="Password Is Required To LogIn." />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <asp:CheckBox ID="RememberMe" runat="server" />
                                        <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Log in" class="btn btn-primary"/>
                                        <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    <asp:Button ID="btnNext1" runat="server" OnClick="btnNext1_Click" Text="Forgot Your Password?" CausesValidation="false" class="btn btn-primary"/>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="view2" runat="server">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SwimmClubCon %>" SelectCommand="SELECT [Username], [Sec_Ques] FROM [Account] WHERE ([Username] = @Username)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="txtUsername" DefaultValue="Null" Name="Username" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblUsername" runat="server" Text="Enter your Username: "></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Button ID="btnNextShowQuestions" runat="server" Text="Next" OnClick="btnNextShowQuestions_Click" class="btn btn-primary"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnCancelNGobacktoLogin" runat="server" CausesValidation="false" OnClick="btnCancelNGobacktoLogin_Click" Text="Cancel" class="btn btn-primary" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblSecQuest" runat="server" Visible="false">Security Question:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Sec_Ques") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:DataList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblsecAns" runat="server" Visible="false">Provide Your Correct Answer</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" ID="Sec_Ans" Visible="false"/>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator runat="server" 
                                            ControlToValidate="Sec_Ans"
                                            ForeColor="Red" BackColor="PowderBlue" 
                                            ErrorMessage="The Answer Field Cannot Be Empty!"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                         <asp:Button ID="btnSubmitSecAns" runat="server" OnClick="btnSubmitSecAns_Click" Text="Submit" Visible="false" class="btn btn-primary"/>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblErrSecAns" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="view3" runat="server">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblYourUsername" runat="server"></asp:Label>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server">New Password</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" ID="TextBox1" TextMode="Password"/>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator runat="server" 
                                        ControlToValidate="Password"
                                        ForeColor="Red" BackColor="LightBlue"
                                        ErrorMessage="Enter Your New Password" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server">Confirm Password</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password"/>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator runat="server" 
                                        ControlToValidate="ConfirmPassword"
                                        ForeColor="Red" BackColor="LightBlue"
                                        Display="Dynamic" 
                                        ErrorMessage="Enter You New Confirmed Password!"/>
                                        <br />
                                        <asp:CompareValidator runat="server" 
                                        ControlToCompare="Password" 
                                        ControlToValidate="ConfirmPassword"
                                        ForeColor="Red" BackColor="LightBlue"
                                        Display="Dynamic" 
                                        ErrorMessage="The Passworrds Do Not Match!"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="Confirm" class="btn btn-primary" />
                                    </td>
                                    <td>
                                        <asp:Label ID="lblErrUpdatePass" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            </asp:View>
                    </asp:MultiView>
                       </div>
</asp:Content>
