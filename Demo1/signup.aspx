<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Demo1.signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/signup.css" rel="stylesheet" />
    <style>
        section {
            font-family: 'Montserrat', sans-serif;
        }

        .row {
            margin: 5px;
        }
        RequiredFieldValidator{
            color:red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <section class="bg-img">
            <div class="container container-form">
                <div class="row">
                    <div class="col-sm-12 my-3">
                        <h2>User Registration</h2>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-sm-4">
                        <label for="fullname">Full Name:</label>
                    </div>
                    <div class="col-sm-8 inputs">
                        <div class="form-group">
                            
                            <asp:TextBox CssClass="form-control" ID="fullname" runat="server" placeholder="John Doe"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="vfullnamename" runat="server" ForeColor="#FFCCCC" 
                                ControlToValidate="fullname" ErrorMessage="*Enter your name">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-sm-4">
                        <label for="contact">Contact No:</label>
                    </div>
                    <div class="col-sm-8 inputs form-group">
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="contact" runat="server" placeholder="9812345670"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="vcontact1" runat="server" ForeColor="#FFCCCC" 
                                ControlToValidate="contact" ErrorMessage="*Enter Phone Number">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="vcontact2" runat="server"
                                ControlToValidate="contact" ErrorMessage="Enter Valid Number" ForeColor="#FFCCCC" 
                                ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-sm-4">
                        <label for="email">Email Id:</label>
                    </div>
                    <div class="col-sm-8 inputs form-group">
                        <asp:TextBox CssClass="form-control" ID="email" runat="server" placeholder="doe@123.com" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="vemail" runat="server" ForeColor="#FFCCCC" 
                            ControlToValidate="email" ErrorMessage="*Enter email ID">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="vemail1" runat="server"
                            ControlToValidate="email" ErrorMessage="Enter your email" ForeColor="#FFCCCC" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                        </asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-sm-4">
                        <label for="address">Full Address:</label>
                    </div>
                    <div class="col-sm-8 inputs form-group">
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="address" runat="server" placeholder="Enter Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="vaddress" runat="server" ForeColor="#FFCCCC" 
                                ControlToValidate="address" ErrorMessage="*Enter address">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-sm-4">
                        <label for="state">State:</label>
                    </div>
                    <div class="col-sm-8 inputs form-group">
                        <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
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
                        <asp:RequiredFieldValidator ID="vstate" ForeColor="#FFCCCC" 
                        runat="server" ControlToValidate="DropDownList1"
                        ErrorMessage="*Select your state"
                        InitialValue="Select">
                    </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-sm-4">
                        <label for="city">City:</label>
                    </div>
                    <div class="col-sm-8 inputs form-group">
                        <asp:TextBox class="form-control" ID="city" runat="server" placeholder="borivali"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="vcity" runat="server" ForeColor="#FFCCCC" 
                        ControlToValidate="city" ErrorMessage="*Enter your name">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-sm-4">
                        <label for="city">User Name:</label>
                    </div>
                    <div class="col-sm-8 inputs form-group">
                        <asp:TextBox class="form-control" ID="username" runat="server" placeholder="john123" ToolTip="Enter user name for login purpose"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="vusername" runat="server" ForeColor="#FFCCCC" 
                        ControlToValidate="username" ErrorMessage="*Enter your name">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-sm-4">
                        <label for="password">New Password:</label>
                    </div>
                    <div class="col-sm-8 inputs form-group">
                        <asp:TextBox class="form-control" ID="passwordconfirm" ToolTip="Minimum 8 characters" runat="server" placeholder="" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="vpasswordconfirm" runat="server" ForeColor="#FFCCCC"
                        ErrorMessage="*password required" ControlToValidate="passwordconfirm"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-sm-4">
                        <label for="password">Confirm Password:</label>
                    </div>
                    <div class="col-sm-8 inputs form-group">
                        <asp:TextBox class="form-control" ID="password" ToolTip="Minimum 8 characters" runat="server" placeholder="" TextMode="Password"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="vpassword" runat="server" ForeColor="#FFCCCC"
                        ErrorMessage="*password required" ControlToValidate="password"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>
                <div class="d-flex flex-row-reverse" style="margin-right: 2%;">
                    <div class="p-2">
                        <asp:Button class="btn btn-success btn-block btn-lg" ID="Submit2" runat="server" Text="SUBMIT" OnClick="Submit2_Click" />
                    </div>
                    <div class="p-2">
                        <asp:Button class="btn btn-danger btn-lg" ID="Submit1" runat="server" Text="RESET" CausesValidation="False" />
                    </div>
                </div>
            </div>






        </section>
        <a href="homepage.aspx"><< Back to Home</a><br>
        <br>
    </section>
</asp:Content>
