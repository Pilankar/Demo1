<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="explore.aspx.cs" Inherits="Demo1.explore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /*.row {
            min-height: 30rem;
        }*/

        h1 {
            margin-top: -25px;
            padding-bottom: 10px;
            font-family: 'Coiny', cursive;
            color: steelblue;
        }

        hr {
            width: 64%;
            opacity: 0.5;
            padding: 2px;
            z-index: 3;
            color: steelblue;
        }
    </style>
    <script type="text/javascript">
        /*$(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });*/
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div>
            <nav>
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <button class="nav-link active" id="nav-daycare-tab" data-bs-toggle="tab" data-bs-target="#nav-daycare" type="button" role="tab" aria-controls="nav-home" aria-selected="true">Day Care</button>
                    <button class="nav-link" id="nav-health-tab" data-bs-toggle="tab" data-bs-target="#nav-health" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Health Centre</button>
                    <button class="nav-link" id="nav-overnight-tab" data-bs-toggle="tab" data-bs-target="#nav-overnight" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">Overnight Care</button>
                </div>
            </nav>


             
            <div class="tab-content" id="nav-tabContent">

                <!-- daycare --> 
                <div class="tab-pane fade show active" id="nav-daycare" role="tabpanel" aria-labelledby="nav-daycare-tab">
                    <div class="row">
                        <div class="col-md-2 col-sm-2">
                            <!-- ads --> 
                        </div>
                        <div class="col-md-8 col-sm-8">
                            <div class="container" >
                                
                                <!-- heading --> 
                                <div class="row">
                                        <div class="col-sm-12 col-md-12">
                                            <center>
                                                <img src="imgs/pets.jpg" class="img-fluid w-50"/>
                                                <h1>Pet Day Care Centres</h1>
                                                <hr />
                                            </center>
                                        </div>
                                    </div>
                                    
                                <!--
                                    <div class="row">
                                        <div class="col-sm-12 col-md-12">
                                            <asp:Panel class="alert alert-success" role="alert" ID="Panel1" runat="server" Visible="False">
                                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                            </asp:Panel>
                                        </div>
                                    </div>-->
                                <!-- / heading --> 
                                <br />
                                
                                <p>
                                    Lorem Impsum Holiday presents aren’t just for humans anymore. Bag of Bones Barkery in the Mercerville Shopping Center in Hamilton says that every year, consumers are spending more to buy gifts for their furry friends.
                                </p>
                                <!--<center>
                                
                                    <div class="input-group mb-3 w-50">
                                        <input type="text" class="form-control" placeholder="Enter City" aria-label="City" aria-describedby="button-addon2">
                                        <button class="btn btn-outline-warning" type="button" id="button-addon1">Search</button>
                                    </div>

                                </center>-->
                                <div class="row">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Address], [City], [Contact], [Hours_start], [Hours_end], [Website], [Visiting_hours] FROM [daycare]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="5"  ShowHeader="False">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <div class="container-fluid">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            Visiting Hours -
                                                                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("Visiting_hours") %>'></asp:Label>
                                                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text=' hours'></asp:Label>
                                                                            &nbsp;| Opens At -
                                                                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("Hours_start") %>'></asp:Label>
                                                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text=' a.m.'></asp:Label>
                                                                            &nbsp;| Closes At -
                                                                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("Hours_end") %>'></asp:Label>
                                                                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text=' p.m.'></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Address") %>' Font-Bold="False" Font-Size="Medium"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            Website -
                                                                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("Website") %>'></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-sm-12 col-lg bg-success text-light text-center p-2 m-2">
                                                                            <i class="fa fa-phone" aria-hidden="true"></i>
                                                                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("Contact") %>' ></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!--<div class="col-lg-2">
                                                                    <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='imgs/dog%20care.jpg' />
                                                                </div>--> 
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <!-- ads --> 
                        </div>

                    </div>
                </div>
                <!-- / daycare --> 

                <!-- health centre --> 
                <div class="tab-pane fade" id="nav-health" role="tabpanel" aria-labelledby="nav-health-tab">
                    <div class="row">
                        <div class="col-md-2 col-sm-2">
                            <!-- ads -->
                        </div>
                        <div class="col-md-8 col-sm-8">
                            <div class="container" >
                                
                                    <div class="row">
                                        <!-- heading -->
                                        <div class="col-sm-12 col-md-12">
                                            <center>
                                                <img src="imgs/pets.jpg" class="img-fluid w-50"/>
                                                <h1>Pet Health Care Centres</h1>
                                                <hr />
                                            </center>
                                        </div>
                                        <!-- / heading -->
                                    </div>
                                <p>
                                    Lorem Impsum Holiday presents aren’t just for humans anymore. Bag of Bones Barkery in the Mercerville Shopping Center in Hamilton says that every year, consumers are spending more to buy gifts for their furry friends.
                                </p>
                                
                                <div class="row">
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Address], [City], [Contact], [Hours_start], [Hours_end], [Website], [Visiting_hours] FROM [pet_nightover]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="5" ShowHeader="False">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <div class="container-fluid">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            Visiting Hours -
                                                                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("Visiting_hours") %>'></asp:Label>
                                                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text=' hours'></asp:Label>
                                                                            &nbsp;| Opens At -
                                                                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("Hours_start") %>'></asp:Label>
                                                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text=' a.m.'></asp:Label>
                                                                            &nbsp;| Closes At -
                                                                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("Hours_end") %>'></asp:Label>
                                                                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text=' p.m.'></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Address") %>' Font-Bold="False" Font-Size="Medium"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            Website -
                                                                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("Website") %>'></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-sm-12 col-lg bg-success text-light text-center p-2 m-2">
                                                                            <i class="fa fa-phone" aria-hidden="true"></i>
                                                                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("Contact") %>' ></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!--<div class="col-lg-2">
                                                                    <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='imgs/dog%20care.jpg' />
                                                                </div>--> 
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            
                                            
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <!-- ads -->
                        </div>

                    </div>
                </div>
                <!-- / health centre --> 

                <!-- pet overnight --> 
                <div class="tab-pane fade" id="nav-overnight" role="tabpanel" aria-labelledby="nav-overnight-tab">
                    <div class="row">
                        <div class="col-md-2 col-sm-2">
                            <!-- ads -->
                        </div>
                        <div class="col-md-8 col-sm-8">
                            <div class="container">
                                
                                    <div class="row">
                                        <div class="col-sm-12 col-md-12">
                                            <center>
                                                <img src="imgs/pets.jpg" class="img-fluid w-50"/>
                                                <h1>Overnight Pet Sitting Centres</h1>
                                                <hr />
                                            </center>
                                        </div>
                                    </div>
                                <p>
                                    Lorem Impsum Holiday presents aren’t just for humans anymore. Bag of Bones Barkery in the Mercerville Shopping Center in Hamilton says that every year, consumers are spending more to buy gifts for their furry friends.
                                </p>
                                
                                <div class="row">
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Address], [City], [Contact], [Hours_start], [Hours_end], [Website], [Visiting_hours] FROM [veternery]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView class="table table-striped table-bordered" ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" CellPadding="5" ShowHeader="False">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <div class="container-fluid">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            Visiting Hours -
                                                                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("Visiting_hours") %>'></asp:Label>
                                                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text=' hours'></asp:Label>
                                                                            &nbsp;| Opens At -
                                                                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("Hours_start") %>'></asp:Label>
                                                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text=' a.m.'></asp:Label>
                                                                            &nbsp;| Closes At -
                                                                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("Hours_end") %>'></asp:Label>
                                                                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text=' p.m.'></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("Contact") %>' Font-Bold="False" Font-Size="Medium"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Address") %>' Font-Bold="False" Font-Size="Medium"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            Website -
                                                                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("Website") %>'></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-sm-12 col-lg bg-success text-light text-center p-2 m-2">
                                                                            <i class="fa fa-phone" aria-hidden="true"></i>
                                                                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("Contact") %>' ></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!--<div class="col-lg-2">
                                                                    <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='imgs/dog%20care.jpg' />
                                                                </div>--> 
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            
                                            
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <!-- ads -->
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
