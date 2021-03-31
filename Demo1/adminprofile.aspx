<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminprofile.aspx.cs" Inherits="Demo1.adminprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" id="S">
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
     <style>
        .card {
            margin: auto;
        }

        .catgif {
            height: 120px;
            position: relative;
            animation: mymove 30s infinite;
        }

        section {
            font-family: 'Poppins', sans-serif;
        }

        @keyframes mymove {
            0% {
                left: 0%;
            }

            100% {
                left: 80%;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="m-2">

        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="150px" src="imgs/guy.gif" />
                                        </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Admin Login</h3>
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
                                    <!--<label>User ID</label>-->
                                    <div class="mb-3">
                                        <label for="username" class="form-label">Username</label>
                                        <asp:TextBox CssClass="form-control" ID="username" runat="server" placeholder="User ID"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="vusername" runat="server" ForeColor="Red"
                                            ControlToValidate="username" ErrorMessage="*Enter your name">
                                        </asp:RequiredFieldValidator>
                                    </div>
                                    <!--<label>Password</label>-->
                                    <div class="mb-3">
                                        <label for="password" class="form-label">Password</label>
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                            <!--<input class="form-control" name="password" type="password" id="password" placeholder="Password" />-->
                                            <div class="input-group-append">
                                                <button id="Show_password" class="btn btn-secondary" type="button">
                                                    <i class="fa fa-eye-slash icon"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <p id="error">
                                        <asp:RequiredFieldValidator ID="vpassword" runat="server" ForeColor="Red"
                                            ErrorMessage="*password required" ControlToValidate="password"></asp:RequiredFieldValidator>
                                    </p>
                                    <div class="mb-3">
                                        <asp:Button CssClass="btn btn-warning btn-lg w-100" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <a href="homepage.aspx"><< Back to Home</a><br>
                    <br>
                </div>
            </div>
        </div>
        <img src="imgs/cat.gif" class="catgif" />
    </section>
</asp:Content>
