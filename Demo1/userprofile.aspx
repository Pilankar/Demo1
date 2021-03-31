<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="Demo1.userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        label, h2 {
            color: black;
        }
        .container-form , .card{
        border: 2px solid black;
        border-radius: .25rem;
        }
    </style>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#Show_password').hover(function show() {
                //Change the attribute to text  
                $("#ContentPlaceHolder1_password").attr('type', 'text');
                $('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
            },
                function () {
                    //Change the attribute back to password  
                    $("#ContentPlaceHolder1_password").attr("type", 'password');
                    $('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
                });

        }); 
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-7 container-form mx-auto">
                <div class="row">
                    <div class="col">
                        <center>
                            <img width="100px" src="imgs/guy.gif"/>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                        <center>
                            <h4>Your Profile</h4>
                        </center>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <hr>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-sm-4">
                        <label for="fullname">Full Name:</label>
                    </div>
                    <div class="col-sm-8 inputs">
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="fullname" runat="server" ToolTip="Username" placeholder="John Doe"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-sm-4">
                        <label for="contact">Contact No:</label>
                    </div>
                    <div class="col-sm-8 inputs form-group">
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="contact" runat="server" placeholder="9812345670" TextMode="Number"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-sm-4">
                        <label for="email">Email Id:</label>
                    </div>
                    <div class="col-sm-8 inputs form-group">
                        <asp:TextBox CssClass="form-control" ID="email" runat="server" placeholder="doe@123.com" TextMode="Email"></asp:TextBox>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-sm-4">
                        <label for="address">Full Address:</label>
                    </div>
                    <div class="col-sm-8 inputs form-group">
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="address" runat="server" placeholder="Enter Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-sm-4">
                        <label for="state">State:</label>
                    </div>
                    <div class="col-sm-8 inputs form-group">
                        <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                            <asp:ListItem Text="Select" Value="select" />
                            <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                            <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                            <asp:ListItem Text="Assam" Value="Assam" />
                            <asp:ListItem Text="Bihar" Value="Bihar" />
                            <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                            <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                            <asp:ListItem Text="Goa" Value="Goa" />
                            <asp:ListItem Text="Gujarat" Value="Gujarat" />
                            <asp:ListItem Text="Haryana" Value="Haryana" />
                            <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                            <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                            <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                            <asp:ListItem Text="Karnataka" Value="Karnataka" />
                            <asp:ListItem Text="Kerala" Value="Kerala" />
                            <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                            <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                            <asp:ListItem Text="Manipur" Value="Manipur" />
                            <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                            <asp:ListItem Text="Mizoram" Value="Mizoram" />
                            <asp:ListItem Text="Nagaland" Value="Nagaland" />
                            <asp:ListItem Text="Odisha" Value="Odisha" />
                            <asp:ListItem Text="Punjab" Value="Punjab" />
                            <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                            <asp:ListItem Text="Sikkim" Value="Sikkim" />
                            <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                            <asp:ListItem Text="Telangana" Value="Telangana" />
                            <asp:ListItem Text="Tripura" Value="Tripura" />
                            <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                            <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                            <asp:ListItem Text="West Bengal" Value="West Bengal" />
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-sm-4">
                        <label for="city">City:</label>
                    </div>
                    <div class="col-sm-8 inputs form-group">
                        <asp:TextBox class="form-control" ID="city" runat="server" placeholder="borivali"></asp:TextBox>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-sm-4">
                        <label for="username">Usename:</label>
                    </div>
                    <div class="col-sm-8 inputs form-group">
                        <asp:TextBox class="form-control" ID="username" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-sm-4">
                        <label>Old Password: </label>
                    </div>
                    <div class="col-sm-8 inputs form-group">
                        <asp:TextBox class="form-control" ID="password" runat="server" placeholder="password" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-sm-4">
                        <label for="password">New Password:</label>
                    </div>
                    <div class="col-sm-8 inputs form-group">
                        <asp:TextBox class="form-control" ID="passwordnew" ToolTip="Minimum 8 characters" runat="server" placeholder="" TextMode="Password"></asp:TextBox>
                                                                
                    </div>
                </div>
                <div class="row my-2">
                    <div class="d-grid p-2">
                        <asp:Button class="btn btn-primary btn-lg" ID="Update" runat="server" Text="Update" OnClick="Update_Click" />
                    </div>

                </div>
            </div>
            <!--<div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                           <img width="100px" src="imgs/cat.gif"/>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                           <h4>Your Favourites</h4>
                           <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="your books info"></asp:Label>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>-->
        </div>
    </div>
    <a href="homepage.aspx"><< Back to Home</a><br>
</asp:Content>
