<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPortal.aspx.cs" Inherits="Demo1.AdminPortal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .left {
            background-color: lavender;
            height: 18rem;
            padding: 2rem;
            display: inline-table;
        }

        .right {
            background-color: floralwhite;
            padding: 2rem;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Navbar
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container">
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Add Posts</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Add Blogs</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Pricing</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    / Navbar-->

    <div class="row">
        <div class="col-md-3 left">
            <h5 class="text-primary">Wecome <span>Admin</span></h5>
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
                <h3>Hello Admin</h3>
            </div>
        </div>
    </div>

</asp:Content>
