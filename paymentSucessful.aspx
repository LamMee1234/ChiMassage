<%@ Page Title="" Language="C#" MasterPageFile="~/ChiMassage.Master" AutoEventWireup="true" CodeBehind="paymentSucessful.aspx.cs" Inherits="Massage_Reservation_System.paymentSucessful" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">

        .auto-style1 {
            width: 399px;
            text-align: center;
        }

        *{
            margin:0;
            padding:0;
        }

        .context
        {
            height:662px;
            width:630px;
            background-image:linear-gradient(lightgreen,white);
            top:250%;
            left:50%;
            margin-left: 475px;
        
        }
        .top-box
        {
            height:150px;
            background-color: lawngreen;
            border-bottom-left-radius:80px;
            border-bottom-right-radius:80px;
        }
        .top-box p 
        {
            text-align:center;
            padding-top:20px;
            font-size:30px;
            color:black;
        }
        .mid
        {
            height: 500px;
            background-image:linear-gradient(white,white);
            margin:-70px 30px 20px;
            color:black;
            text-align: center;
            font-size:11px;
            border-radius:10px;
        }
        .mid h1
        {
            padding-top:30px;
            padding-bottom: 30px;
            font-size:35px;
            font-weight: normal;
            color:green;

        }
        .mid p
        {
            padding-top:30px;
            padding-bottom: 30px;
            font-size:20px;
            font-weight: normal;
            color:black;
        }
        .homebtn
        {
            color:black;
            margin: 0px 225px;
            height: 30px;
            width:200px;
            background-color: lawngreen;
            border:none;
            cursor: pointer;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="context">
        <div class="top-box">
            <p>Product Purchased</p>
        </div>

        <div class="mid">
            <asp:Image ID="Image1" runat="server" ImageUrl="Images/checkicon.png" Width="120px" />
            <h1>Successful Payment.</h1>
            <br />
            <br />
            <p>Your Payment Has Been Completed Succussfully!</p>
        </div>
         <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
        <div class="bottom">
            <asp:Button ID="btnHome" runat="server" Text="Back To Home" class="homebtn" PostBackUrl="HomePage.aspx"/>
        </div>
    </div>

</asp:Content>
