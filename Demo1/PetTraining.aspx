<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PetTraining.aspx.cs" Inherits="Demo1.PetTraining" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .back-img h1 {
            /*margin-top: -50%*/
            padding-top: 5%;
            font-family: 'Coiny', cursive;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: white;
            /*font-size: 110px;*/
            margin: 0;
        }

        /*hr {
            width: 64%;
            opacity: 0.5;
            padding: 2px;
            z-index: 3;
            color: white;
        }*/

        .back-img {
            background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(imgs/cat-dog.png);
            background-color: #222;
            height: 15rem;
            background-repeat: no-repeat;
            background-size: cover;
            margin-top: 1%;
            text-align: center;
            /* padding: 2%; */
        }
        p{
            padding: 10px;
            font-size: larger;
        }
        .card:hover {
            margin: -5px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!--<div class="container-fluid" style="background-color: #EEF0FF;">
            <!--<nav>
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <button class="nav-link active" id="nav-groom-tab" data-bs-toggle="tab" data-bs-target="#nav-groom" type="button" role="tab" aria-controls="nav-goom" aria-selected="true">Pet Grooming</button>
                    <button class="nav-link" id="nav-health-tab" data-bs-toggle="tab" data-bs-target="#nav-health" type="button" role="tab" aria-controls="nav-health" aria-selected="false">Health And Nutrition</button>
                    <button class="nav-link" id="nav-training-tab" data-bs-toggle="tab" data-bs-target="#nav-training" type="button" role="tab" aria-controls="nav-training" aria-selected="false">Pet Training</button>
               </div>
            </nav>
            <div class="row">
                <div class="col-sm-12">
                    <!--<div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-groom" role="tabpanel" aria-labelledby="nav-groom-tab">
                    <div class="row">
                        <div class="container">
                            <div class="back-img">
                                <h1>Pet Grooming</h1>
                            </div>
                            <br />
                            <div class="container">
                                <div class="row">
                                <div class="col-sm-12 col-lg-4 p-2">
                                    <center>
                                    <div class="card" style="width: 18rem;">
                                        <img class="card-img-top" height="160" src="imgs/cat1.jpg" alt="cat">
                                        <div class="card-body">
                                            <h5 class="card-title">Pet Grooming</h5>
                                            <p class="card-text">Read some important tips about pet grooming.</p>
                                            <asp:LinkButton runat="server" Text="Read More" CssClass="btn btn-outline-primary w-100"></asp:LinkButton>
                                        </div>
                                    </div>
                                    </center>
                                </div>
                                <div class="col-sm-12 col-lg-4 p-2">
                                    <center>
                                    <div class="card" style="width: 18rem;">
                                        <img class="card-img-top" height="160" src="imgs/dog%20care.jpg" alt="Dog-and-Cat-vet">
                                        <div class="card-body">
                                            <h5 class="card-title">Health & Nutrition</h5>
                                            <p class="card-text">Read some important tips about pet nutrition.</p>
                                            <asp:LinkButton runat="server" Text="Learn More" CssClass="btn btn-outline-primary w-100"></asp:LinkButton>
                                        </div>
                                    </div>
                                    </center>
                                </div>
                                <div class="col-sm-12 col-lg-4 p-2">
                                    <center>
                                    <div class="card" style="width: 18rem;">
                                        <img class="card-img-top" height="160" src="imgs/woman-with-dog.jfif" alt="Dog">
                                        <div class="card-body">
                                            <h5 class="card-title">Pet Training</h5>
                                            <p class="card-text">Read some important tips about pet training.</p>
                                            <asp:LinkButton runat="server" Text="Learn More" CssClass="btn btn-outline-primary w-100"></asp:LinkButton>
                                        </div>
                                    </div>
                                    </center>
                                </div>
                            </div>
                            </div>
                            
                           <br />
                            <asp:GridView class="table table-striped table-bordered" ID="posts" runat="server"></asp:GridView>

                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-health" role="tabpanel" aria-labelledby="nav-health-tab">
                    <div class="row">
                        <div class="container">
                            <center>
                                <img src="imgs/pets.jpg" class="img-fluid w-50"/>
                                <h1>Health & Nutrition</h1>
                                <hr />
                            </center>
                            
                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>

                        </div>
                    </div>
                <!--</div>
                <div class="tab-pane fade" id="nav-training" role="tabpanel" aria-labelledby="nav-training-tab">
                    <div class="row">
                        <div class="container">
                            <center>
                                <img src="imgs/pets.jpg" class="img-fluid w-50"/>
                                <h1>Pet Training</h1>
                                <hr />
                            </center>
                            

                            <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server"></asp:GridView>

                        </div>
                    </div>
                <!--</div>
            </div>
                </div>
            </div>
           
    </div>-->

     <div class="container-fluid" style="/*background-color: #EEF0FF;*/">

            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="container">
                            <div class="row">
                               <center>
                                   <div class="col-sm-8 text-center m-0">
                                       <br />
                                        <h1>Pet Training</h1>
                                        <p>There is a lot of time, money and commitment that goes into caring for a pet, but pets that are well cared for often become a beloved member of the family.</p>
                                
                                   </div>
                               </center>
                            </div>
                            <div style="width: 98%; background-color: crimson; 
                                height: 20em; position: absolute; margin-top: 4em;">
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-12 col-lg-4 p-2">
                                        <center>
                                        <div class="card" style="width: 18rem;">
                                            <img class="card-img-top" height="160" src="imgs/cat1.jpg" alt="cat">
                                            <div class="card-body">
                                                <h5 class="card-title">Pet Grooming</h5>
                                                <p class="card-text">Read some important tips about pet grooming.</p>
                                                <asp:LinkButton runat="server" Text="Read More" CssClass="btn btn-outline-primary w-100" OnClick="Unnamed1_Click1"></asp:LinkButton>
                                            </div>
                                        </div>
                                        </center>
                                    </div>
                                    <div class="col-sm-12 col-lg-4 p-2">
                                        <center>
                                        <div class="card" style="width: 18rem;">
                                            <img class="card-img-top" height="160" src="imgs/dog%20care.jpg" alt="Dog-and-Cat-vet">
                                            <div class="card-body">
                                                <h5 class="card-title">Health & Nutrition</h5>
                                                <p class="card-text">Read some important tips about pet nutrition.</p>
                                                <asp:LinkButton runat="server" Text="Read More" CssClass="btn btn-outline-primary w-100" OnClick="Unnamed2_Click1"></asp:LinkButton>
                                            </div>
                                        </div>
                                        </center>
                                    </div>
                                    <div class="col-sm-12 col-lg-4 p-2">
                                        <center>
                                        <div class="card" style="width: 18rem;">
                                            <img class="card-img-top" height="160" src="imgs/woman-with-dog.jfif" alt="Dog">
                                            <div class="card-body">
                                                <h5 class="card-title">Pet Training</h5>
                                                <p class="card-text">Read some important tips about pet training.</p>
                                                <asp:LinkButton runat="server" Text="Read More" CssClass="btn btn-outline-primary w-100" OnClick="Unnamed3_Click1"></asp:LinkButton>
                                            </div>
                                        </div>
                                        </center>
                                    </div>
                                </div>
                           
                                <br /><br />
                                
                                
                                <h2>Articles on Pet Training</h2><hr /><br />
                                <div class="row mx-auto">
                                    <div class="col-sm-12">
                                        <asp:Repeater ID="RepArticle" runat="server">
                                            <ItemTemplate>
                                                <h4><%# Eval("title") %></h4>
                                                <p class="card-text para"><%# Eval("intro_para") %></p>
                                                <a href="article.aspx?title=<%# Eval("title") %>&id=<%# Eval("Id") %>" 
                                                    class="card-text">Read The Complete Article</a>
                                                
                                                <hr /><br />
                                                <script type="text/javascript">
                                                    var str = document.getElementsByClassName("para");
                                                    var i;
                                                    for (i = 0; i < str.length; i++) {
                                                        str[i].innerHTML = str[i].innerHTML.slice(0, 200) + " ...";
                                                    }
                                                </script>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                           </div>

                        </div>
                    </div>
               
                </div>
            </div>
           
    </div>
</asp:Content>
