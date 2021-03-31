<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="foodpage.aspx.cs" Inherits="Demo1.foodpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Place text in the middle of the image */
        .hero-text {
            text-align: center;
            font-size: 230%;
            position: absolute;
            margin-top: 3%;
            /* margin-left: 10%; */
            color: brown;
            background-color: beige;
        }
        section{
            font-family: 'Poppins', sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <h2 class="hero-text d-block w-100">*No food items available right now. We are working on it. <br />
            Sorry, for your inconvinience.*</h2>
        <img src="imgs/dog2.jpg" class="d-block w-100" />
    </section>
</asp:Content>
