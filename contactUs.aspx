<%@ Page Title="Contact Us | Chi Massage" Language="C#" MasterPageFile="~/ChiMassage.Master" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="Massage_Reservation_System.contactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            box-sizing: border-box;
        }

        /* Style inputs */
        input[type=text], select, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
        }

        input[type=submit] {
            background-color: #04AA6D;
            color: white;
            padding: 12px 20px;
            border: none;
            cursor: pointer;
        }

            input[type=submit]:hover {
                background-color: #45a049;
            }

        /* Style the container/contact section */
        .containerContact {
            border-radius: 5px;
            /*            background-color: #f2f2f2;
*/ padding: 10px;
        }

        /* Create two columns that float next to eachother */
        .columnContact {
            float: left;
            width: 50%;
            margin-top: 6px;
            padding: 20px;
        }

        /* Clear floats after the columns */
        .rowContact:after {
            content: "";
            display: table;
            clear: both;
        }

        /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
        @media screen and (max-width: 600px) {
            .columnContact, input[type=submit] {
                width: 100%;
                margin-top: 0;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="containerContact" style="width: 75%; margin: auto; padding-bottom: 50px; padding-top: 15px">
        <div style="text-align: center">
            <h1 class="tog-page-titleCustom">Contact Us</h1>
        </div>
        <div class="rowContact">
            <div class="columnContact">
                <div id="map" style="height: 400px; width: 400px"></div>
                <br>
                <div style="text-align: justify">
                    <span style="font-weight: bold">Chi Massage:</span> Unit 801, Level 8, Tropicana Gardens Office Tower, No. 2A, Persiaran Surian, Tropicana Indah, Petaling Jaya, 47810 Selangor, Malaysia<br />
                    <br />

                    <span style="font-weight: bold">Contact:</span>  0122848103<br />
                    <br />

                    <span style="font-weight: bold">Hours:</span>  10am - 6pm (Mon - Fri), Closed (Sat, Sun and Public Holidays)
                </div>

            </div>
            <div class="columnContact">
                <section>
                    <asp:Label ID="lblFirstName" Style="margin-bottom: 0.5rem; display: inline-block; cursor: default;" CssClass="lblFirstName" runat="server" Text="Full Name"></asp:Label>
                    <asp:TextBox ID="txtFirstName" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" Width="100%" CssClass="txtFirstName" runat="server" placeholder="Enter your full name" required="true"></asp:TextBox>



                    <asp:Label ID="lblEmail" Style="margin-bottom: 0.5rem; display: inline-block; cursor: default;" CssClass="lblEmail" runat="server" Text="Email"></asp:Label>

                    <asp:TextBox ID="txtEmail" required="true" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" CssClass="txtEmail" runat="server" placeholder="xxxx@email.com" TextMode="Email"></asp:TextBox>

                    <br/>

                    <asp:Label ID="lblAddress"  CssClass="lblAddress" runat="server" Text="Message"></asp:Label>
                   
                    <asp:TextBox ID="txtAddress" required="true" Style="min-height: calc(1.5em + 1rem + 2px); display: block; width: 100%; font-weight: 400; line-height: 1.5; color: #212529; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; appearance: none; transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; padding: 0.5rem 1rem; font-size: 1.25rem; border-radius: 0.5rem;" CssClass="txtAddress" runat="server" Height="75px" placeholder="Enter your message here..." TextMode="MultiLine" Width="300px"></asp:TextBox>
                    <asp:Button ID="btnRegister" type="submit" CssClass="btnLogin" runat="server" Text="Send" OnClick="btnRegister_Click" />

                </section>
            </div>
        </div>
    </div>

    <script>
        let map;

        function initMap() {
            const myLatLng = { lat: 3.1489664804878235, lng: 101.5948254210482 };
            const map = new google.maps.Map(document.getElementById("map"), {
                zoom: 12,
                center: myLatLng,
            });

            new google.maps.Marker({
                position: myLatLng,
                map,
                title: "location",
            });
        }
    </script>
    <script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDWI7rfHv026_cBtTpJiswEX1x9duIbEC0&callback=initMap&v=weekly"
        defer></script>
</asp:Content>
