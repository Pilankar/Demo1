<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addArticle.aspx.cs" Inherits="Demo1.addArticle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .left {
            background-color: lavender;
            height: auto;
            padding: 2rem;
            /* display: inline-table;*/
        }

        .right {
            background-color: floralwhite;
            padding: 2rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-3 left">
            <h5 class="text-primary">Welcome Admin</h5>
            <div class="p-2">
                <!-- Sitemap -->
                <asp:TreeView ID="TreeView1" runat="server" ImageSet="XPFileExplorer" NodeIndent="15" DataSourceID="SiteMapDataSource1" Height="111px" Width="95px">
                    <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
                    <NodeStyle Font-Names="Tahoma" Font-Size="11pt" HorizontalPadding="2px" NodeSpacing="0px" VerticalPadding="18px" ForeColor="Black" />
                    <ParentNodeStyle Font-Bold="False" />
                    <SelectedNodeStyle Font-Underline="False" Font-Size="12pt" HorizontalPadding="2px" VerticalPadding="18px" ForeColor="Red" NodeSpacing="0px" />
                </asp:TreeView>
                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" ShowStartingNode="true" />
                <!-- / Sitemap -->
            </div>

        </div>
        <div class="col-md-9 right">
            <div class="container mx-0">
                <div class="card" style="/*width: 40rem*/">
                    <div class="card-body">
                        <h2 class="card-title">Add Articles Info</h2>
                        <hr />

                        <div class="card-text">

                            <!-- Article Title -->
                            <div class="row my-2">
                                <div class="col-sm-3">
                                    <label for="title">Article Title:</label>
                                </div>
                                <div class="col-sm-9 inputs">
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="title" runat="server" placeholder="Title of Article"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="vtitle" runat="server" ForeColor="Red"
                                            ControlToValidate="title" ErrorMessage="*Enter your name">
                                        </asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <!-- / Article Title -->

                            <!-- Category -->
                            <div class="row my-2">
                                <div class="col-sm-3">
                                    <label for="state">Category:</label>
                                </div>
                                <div class="col-sm-9 inputs form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Select" Value="0" />
                                        <asp:ListItem Text="Pet Grooming" Value="Pet Grooming" />
                                        <asp:ListItem Text="Health Care and Nutrition" Value="Nutrition" />
                                        <asp:ListItem Text="Pet Training" Value="Pet Training" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="vcategory" ForeColor="Red"
                                        runat="server" ControlToValidate="DropDownList2"
                                        ErrorMessage="*Select Category"
                                        InitialValue="0">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <!-- / Category -->

                            <!-- Content -->
                            <div class="row my-2">
                                <div class="col-sm-3">
                                    <label for="content">Content:</label>
                                </div>
                                <div class="col-sm-9 inputs form-group">
                                    <div class="form-group">
                                        <!-- intro -->
                                        <asp:TextBox CssClass="form-control contents" ID="content" runat="server" 
                                            placeholder="Content Introduction" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="vaddress" runat="server" ForeColor="Red"
                                            ControlToValidate="content" ErrorMessage="*Atleast 1 para is must">
                                        </asp:RequiredFieldValidator>
                                        <!-- / intro -->

                                        <br />

                                        <!-- para1 -->
                                        <asp:TextBox CssClass="form-control contents" ID="TextBox1" runat="server" 
                                            placeholder="Content Introduction" TextMode="MultiLine" 
                                            Rows="3" Visible="False"></asp:TextBox>
                                        <!-- / para1 -->

                                        <br />

                                        <!-- para2 -->
                                        <asp:TextBox CssClass="form-control contents" ID="TextBox2" runat="server" 
                                            placeholder="Content Introduction" TextMode="MultiLine" 
                                            Rows="3" Visible="False"></asp:TextBox>
                                        <!-- / para2 -->

                                        <!-- add para btn -->
                                        <asp:Button ID="AddContent" CssClass="border-3 rounded-circle btn-info text-light float-end"
                                            runat="server" Text="+" CausesValidation="False"
                                            ToolTip="Add Another Paragraph" UseSubmitBehavior="False" OnClick="AddContent_Click" />
                                        <!-- / add para btn -->

                                        <p id="view" runat="server"></p>
                                    </div>
                                </div>
                            </div>
                            <!-- / Content -->

                            <!-- Submit btn -->
                            <div class="row my-2">
                                <div class="p-2">
                                    <asp:Button CssClass="btn btn-primary btn-block btn-lg w-100" ID="Submit" 
                                        runat="server" Text="Publish" OnClick="Submit_Click" />
                                </div>
                            </div>
                            <!-- / Submit btn -->
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
</asp:Content>
