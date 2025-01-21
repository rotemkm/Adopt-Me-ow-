<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="AdoptMeow.home" %> 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="home-style.css"> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        /* Reset styles for consistency */
        body {
            margin: 0;
            padding: 0;
            text-align: left; /* Default left-aligned text */
        }

        /* Container for the homepage content */
        .home-page {
            display: flex;
            justify-content: flex-start; /* Align items to the left */
            align-items: flex-start;    /* Align items to the top */
            width: 100%;                /* Full-width container */
            padding: 20px;              /* Optional padding */
        }

        /* Keyframes for smooth text animation */
        @keyframes moveText {
            0% {
                transform: translateX(-300%); /* Starts off-screen to the left */
                opacity: 0;                  /* Starts invisible */
            }

            100% {
                transform: translateX(-550px); /* Moves slightly left of its natural position */
                opacity: 1;                   /* Ends fully visible */
            }
        }

        /* Styling for the text */
        .home-page-text {
            color: white;                     /* Text color */
            font-size: 6em;                   /* Large text size */
            font-weight: 700;                 /* Bold text */
            margin: 0;                        /* Reset default margin */
            animation: moveText 0.8s forwards ease; /* Smooth left-to-right transition */
            text-align: left;                 /* Ensure text is left-aligned */
        }
    </style>
    <div class="home-page">
        <p class="home-page-text"><b>Adopt <br>Me-ow!</b></p>
    </div>
</asp:Content>
