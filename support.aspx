<%@ Page Title="" Language="C#" MasterPageFile="~/member.Master" AutoEventWireup="true" CodeBehind="support.aspx.cs" Inherits="GroupAss.ServicesAndSupport" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Main" ContentPlaceHolderID="Main" runat="server">
    <style>
       
        #TextArea1 {
            height: 82px;
            width: 566px;
        }
       
        .center {
            margin-left:auto;
            margin-right:auto;
            width:50%;
            background-color:white;
        }
        .textbox{
            resize:none;
        }
    </style>


    
       <div class="background" style="margin-left:3%; background-color:#DBF3FA">
            <asp:Menu ID="mnFeatures" Orientation="Horizontal" StaticMenuItemStyle-CssClass="tab" Font-Size="Large" 
                StaticSelectedStyle-CssClass="selectedTab" StaticMenuItemStyle-HorizontalPadding="50px" StaticSelectedStyle-BackColor="White"
                runat="server" OnMenuItemClick="mnFeatures_MenuItemClick" BackColor="White" >
                <Items>
                    <asp:MenuItem Text="Feedback" Value="0" Selected="true"></asp:MenuItem>
                    <asp:MenuItem Text="FAQ" Value="1"></asp:MenuItem>
                </Items>

<StaticMenuItemStyle HorizontalPadding="50px" CssClass="tab"></StaticMenuItemStyle>

<StaticSelectedStyle BackColor="#DBF3FA" CssClass="selectedTab"></StaticSelectedStyle>
            </asp:Menu>
           
            <div>
                <asp:MultiView ID="mvMenu" ActiveViewIndex="0" runat="server">
                    <asp:View ID="View1" runat="server">
                        <br />
                        <h2 style="background-color: #d6d6d6">Your Feedbacks</h2>
                        <br />
                         <asp:GridView ID="GridViewFeed" runat="server" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="GridViewFeed_PageIndexChanging" CellPadding="4" ForeColor="Black" Width="800px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
               
                <Columns>
                    
                    <asp:BoundField DataField="FeedbackDesc" HeaderText="Description">
                    <ItemStyle Width="150px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Date" HeaderText="Date">
                    <ItemStyle Width="150px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Time" HeaderText="Time" DataFormatString="{0:c}">
                    <ItemStyle Width="150px" />
                    </asp:BoundField>
                  
                    
                </Columns>
                             <FooterStyle BackColor="#CCCCCC" />
                             <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                             <RowStyle BackColor="White" />
                             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                             <SortedAscendingCellStyle BackColor="#F1F1F1" />
                             <SortedAscendingHeaderStyle BackColor="#808080" />
                             <SortedDescendingCellStyle BackColor="#CAC9C9" />
                             <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>


                        <br /><br /><br />
                       <h3>Please insert your feedback below:</h3>
                        <asp:TextBox ID="tbFeed" runat="server" TextMode="MultiLine" Width="400px" Placeholder="Insert text here..." CssClass="textbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFeed" runat="server" ControlToValidate="tbFeed" ErrorMessage="Feedback cannot be left empty.." ForeColor="Red"></asp:RequiredFieldValidator>
                        <br /><br />
                        <asp:Button ID="btnFeed" runat="server" OnClick="btnFeed_Click" Text="Post" class="btn btn-primary"/>
                        <br />
                        
                        <asp:Label ID="lblResult" runat="server"></asp:Label>
                        <br />


                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <br />
                        <h2 style="background-color: #d6d6d6">Frequently Asked Questions</h2>
                        
                            
                            
                                <asp:SqlDataSource ID="SqlDataSourceFAQ" runat="server" ConnectionString="<%$ ConnectionStrings:SwimmClubCon %>" SelectCommand="SELECT DISTINCT [FaqSearchTerm] FROM [FAQ]"></asp:SqlDataSource>
                        
                        <br />
                            
                            Categories:<asp:DropDownList ID="ddlFAQ" runat="server" Placeholder="Select one category" DataTextField="FaqSearchTerm" AutoPostBack="True" OnSelectedIndexChanged="ddlFAQ_SelectedIndexChanged" Height="30px" ForeColor="Black">

                                       </asp:DropDownList>
                        
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:TextBox ID="tbFAQ" runat="server" Placeholder="Search FAQ" Height="30px" Width="200px"></asp:TextBox>
                        <asp:Button ID="btnFAQ" runat="server" OnClick="btnFAQ_Click" Text="Search" class="btn btn-primary" />
                        <br />
                        <br />
                        <asp:Label ID="lblMsg" runat="server" Font-Names="Arial"></asp:Label>
                        <br /><br />
                        <asp:GridView ID="GridViewFAQ" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="800px">
               
                            <AlternatingRowStyle BackColor="#CCCCCC" />
               
                <Columns>
                   
                    <asp:BoundField DataField="FaqQuestion" HeaderText="Question">
                    <ItemStyle Width="150px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FaqAnswer" HeaderText="Answer">
                    <ItemStyle Width="150px" />
                    </asp:BoundField>
                </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                    </asp:View>
                </asp:MultiView>
            </div>
        </div>
    </asp:Content>
  