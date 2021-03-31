<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="article.aspx.cs" Inherits="Demo1.article" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .img{
            width:100%;
        }
        p{
            font-size:large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-2">
        <div class="row">
            <div class="col-12 text-center">
                <h1 id="titlename" runat="server">Article Name</h1>
                <hr />
            </div>
            <br />
            <div class="col-9 mx-auto">
                <img src="imgs/dogcatnew.jpg" class="img-fluid img" />
            </div>
            <br />
            <div class="col-12">
                <br />
                <p id="intro" runat="server">some text</p>
                <br />
                <p id="para1" runat="server">some text</p>
                <br />
                <p id="para2" runat="server">some text</p>
            </div>
        </div>
    </div>
</asp:Content>
