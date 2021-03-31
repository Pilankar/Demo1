<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddCentre.aspx.cs" Inherits="Demo1.AddCentre" %>

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
                        <h2 class="card-title">Add Centres Info</h2>
                        <hr />
                        <div class="card-text">
                            <div class="row my-2">
                                <div class="col-sm-3">
                                    <label for="name">Name:</label>
                                </div>
                                <div class="col-sm-9 inputs">
                                    <div class="form-group">

                                        <asp:TextBox CssClass="form-control" ID="name" runat="server" placeholder="Name of place"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="vname" runat="server" ForeColor="Red"
                                            ControlToValidate="name" ErrorMessage="*Enter your name">
                                        </asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="row my-2">
                                <div class="col-sm-3">
                                    <label for="state">Category:</label>
                                </div>
                                <div class="col-sm-9 inputs form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Select" Value="0" />
                                        <asp:ListItem Text="Daycare" Value="Daycare" />
                                        <asp:ListItem Text="Health Centre" Value="vet" />
                                        <asp:ListItem Text="Pet Overnight Stay" Value="Pet Overnight" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="vcategory" ForeColor="Red"
                                        runat="server" ControlToValidate="DropDownList2"
                                        ErrorMessage="*Select Category"
                                        InitialValue="0">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row my-2">
                                <div class="col-sm-3">
                                    <label for="address">Full Address:</label>
                                </div>
                                <div class="col-sm-9 inputs form-group">
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="address" runat="server" placeholder="Enter Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                                            ControlToValidate="address" ErrorMessage="*Enter address">
                                        </asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="row my-2">
                                <div class="col-sm-3">
                                    <label for="city">City:</label>
                                </div>
                                <div class="col-sm-9 inputs form-group">
                                    <asp:TextBox class="form-control" ID="city" runat="server" placeholder="Eg. Borivali"></asp:TextBox>
                                    <br />
                                </div>
                            </div>
                            <div class="row my-2">
                                <div class="col-sm-3">
                                    <label for="contact">Contact No:</label>
                                </div>
                                <div class="col-sm-9 inputs form-group">
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="contact" runat="server" placeholder="Eg. 9812345670"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="vcontact1" runat="server" ForeColor="Red"
                                            ControlToValidate="contact" ErrorMessage="*Enter Phone Number">
                                        </asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="vcontact2" runat="server"
                                            ControlToValidate="contact" ErrorMessage="Enter Valid Number" ForeColor="Red"
                                            ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="row my-2">
                                <div class="col-sm-3">
                                    <label for="contact">Starting Hours:</label>
                                </div>
                                <div class="col-sm-3 inputs form-group">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="startHours" runat="server" placeholder="7"></asp:TextBox>
                                            <span class="input-group-text">am</span>
                                        </div>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red"
                                            ControlToValidate="startHours" ErrorMessage="*Enter Starting Hours">
                                        </asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="startHours"
                                            ErrorMessage="*Not Valid" ForeColor="Red" Type="Integer" MinimumValue="1" MaximumValue="12"></asp:RangeValidator>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <label for="contact">Closing Hours:</label>
                                </div>
                                <div class="col-sm-3 inputs form-group">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="endhours" runat="server" placeholder="7"></asp:TextBox>
                                            <span class="input-group-text">pm</span>
                                        </div>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red"
                                            ControlToValidate="endhours" ErrorMessage="*Enter Starting Hours">
                                        </asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="endhours"
                                            ErrorMessage="*Not Valid" ForeColor="Red" Type="Integer" MinimumValue="1" MaximumValue="12"></asp:RangeValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="row my-2">
                                <div class="col-sm-3">
                                    <label for="name">Website URL (if any):</label>
                                </div>
                                <div class="col-sm-9 inputs">
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="website" runat="server" placeholder="Eg. CodeByMitali.com"></asp:TextBox>
                                        <br />
                                    </div>
                                </div>
                            </div>

                            <div class="row my-2">
                                <div class="p-2">
                                    <asp:Button class="btn btn-primary btn-block btn-lg w-100" ID="Submit" runat="server" Text="Publish" OnClick="Submit_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
</asp:Content>
