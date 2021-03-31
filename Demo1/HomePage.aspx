<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Demo1.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/homepage.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- cover section -->
    <section class="section1 text-light">
        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item">
                    <img src="imgs/fluff%20buds%20(1).png" class="d-block w-100 img-fluid" alt="...">
                </div>
                <div class="carousel-item active">
                    <img src="imgs/fluff%20buds.png" class="d-block w-100 img-fluid" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </section>
    <!-- / cover section -->

    <br />

    <!-- services section -->
    <section class="section2">
        <!--<img src="imgs/DogIcon.png" class="img-fluid "/>-->
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <hr /><br />
                    <h1>Our Pet Care Services</h1>
                    <br />
                    <br />
                </div>
            </div>
            <div class="row">
                <div class="col-4 col-md-4">
                    <center>
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" height="160" src="imgs/cat1.jpg" alt="cat">
                        <div class="card-body">
                            <h5 class="card-title">Pet Day Care Nearby</h5>
                            <p class="card-text">Don't worry about where to put your buddy when you are not at home. Now you can find Pet Day Care Nearby by some simple steps.</p>
                            <asp:LinkButton runat="server" Text="Learn More" CssClass="btn btn-outline-danger" OnClick="Unnamed1_Click1"></asp:LinkButton>
                        </div>
                    </div>
                    </center>
                </div>
                <div class="col-4 col-md-4">
                    <center>
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" height="160" src="imgs/Dog-and-Cat-vet.jpg" alt="Dog-and-Cat-vet">
                        <div class="card-body">
                            <h5 class="card-title">Health Centre Nearby</h5>
                            <p class="card-text">Worrying about your buddy's health condition? Now you can find Vet Nearby of your house for your Pet by some simple steps.</p>
                            <asp:LinkButton runat="server" Text="Learn More" CssClass="btn btn-outline-danger" OnClick="Unnamed2_Click"></asp:LinkButton>
                        </div>
                    </div>
                    </center>
                </div>
                <div class="col-4 col-md-4">
                    <center>
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" height="160" src="imgs/woman-with-dog.jfif" alt="Dog">
                            <div class="card-body">
                                <h5 class="card-title">Pet Overnight Nearby</h5>
                                <p class="card-text">Don't worry about shelter for your buddy when you are at vacation. Now you can find Pet Overnight Nearby by some simple steps.</p>
                                <asp:LinkButton runat="server" Text="Learn More" CssClass="btn btn-outline-danger" OnClick="Unnamed3_Click"></asp:LinkButton>
                            </div>
                        </div>
                    </center>
                </div>
            </div>
        </div>
        <!--Whats New! Section-->
    </section>
    <!-- / services section -->

    <br />

    <!-- want a pet section -->
    <section class="section3">
        <img src="imgs/fluff%20buds%20(6).png" class="img-fluid w-100" />
        <aside class="hero-text">
            <asp:LinkButton ID="ad" runat="server" Text="Learn More" CssClass="btn-warning text-light" OnClick="ad_Click" />
        </aside>
    </section>
    <!-- / want a pet section -->

    <br />

    <!-- read blogs section -->
    <section class="section4">
        <!--<img src="imgs/fluff%20buds%20(5).png" class="bg-img img-fluid " />-->
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1 style="color: steelblue;">Tips for Pet Parenting</h1>
                    <br />
                    <br />
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <a href="blogs.aspx">
                            <img class="rounded-circle blog-image" src="imgs/dog%20care.jpg"/>
                        </a>
                        <h5>Pet Grooming</h5>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <a href="blogs.aspx">
                            <img class="rounded-circle blog-image" src="imgs/cat-and-veterinarian-thinkstockphotos-604017802jpg.jpg"/>
                        </a>
                        <h5>Health and Nutrition</h5>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <a href="blogs.aspx">
                            <img class="rounded-circle blog-image" src="imgs/happy-dog.jpg"/>
                        </a>
                        <h5>Pet Training</h5>
                    </center>
                </div>
            </div>
        </div>
    </section>
    <!-- / read blogs section -->

    <br />

    <!-- about us section -->
    <section class="section5" id="aboutUs">
        <img src="imgs/fluff%20buds%20(3).png" class="w-100 img-fluid" />
    </section>
    <!-- / about us section -->

    <!-- our team section -->
    <section class="section6">
        <!--<img src="imgs/fluff%20buds%20(5).png" class="bg-img img-fluid" />-->
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1 style="color: steelblue;">Our Community</h1>
                    <br />
                    <br />
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img class="rounded-circle blog-image" src="imgs/mitali1.jpg"/>
                        <h5>Mitali Pilankar</h5>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img class="rounded-circle blog-image" src="imgs/guy.gif"/>
                        <h5>John Doe</h5>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img class="rounded-circle blog-image" src="imgs/vet.jpg"/>
                        <h5>Claire Parker</h5>
                    </center>
                </div>
            </div>
        </div>
    </section>
    <!-- / our team section -->

    <!-- contact us section -->
    <section class="section7 text-light" id="contactUs">
        <img src="imgs/fluff%20buds%20(1).gif" class="w-100 img-fluid"  style="padding:0px 3em 0px 3em;"/>
    </section>
    <!-- / contact us section -->

</asp:Content>
