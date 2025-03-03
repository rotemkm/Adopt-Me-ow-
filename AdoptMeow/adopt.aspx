<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adopt.aspx.cs" Inherits="AdoptMeow.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="imageload.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        main.adopt {
            margin: 50px auto;
            padding: 40px;
            background: transparent;
            border: 2px solid rgba(255, 255, 255, 0.5);
            border-radius: 70px;
            backdrop-filter: blur(20px);
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.5);
            width: 1400px;
        }

        .gallery-text {
            padding: 20px 0 40px 20px;
            text-align: center;
            color: white;
            font-size: 36px;
            font-weight: bold;
        }

        #image-gallery {
            display: grid;
            grid-template-columns: repeat(4, 300px);
            justify-content: center;
            gap: 20px;
            padding: 10px;
            width: 180px;
            margin: 0 auto;
        }

        .image-container {
            width: 300px;
            height: auto;
            display: inline-flex;
            flex-direction: column;
            align-items: center;
            border: 2px solid rgba(255, 255, 255, 0.5);
            border-bottom: 0;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            cursor: pointer;
            transition: transform 0.5s ease;
        }

        img.gallery {
            width: 100%;
            height: 300px;
            object-fit: cover;
            border-radius: 20px 20px 0 0;
        }

        .caption {
            width: 102%; /* Align caption width with the image */
            font-size: 17px;
            line-height: 17px 1.3;
            color: #787675;
            text-align: center;
            padding: 10px 10px 10px 20px; /* Padding ensures even spacing inside the caption */
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 0 0 20px 20px; /* Smooth bottom corners */
            border: 2px solid rgba(255, 255, 255, 0.5);
            white-space: pre;
            text-align: left;
            word-spacing: 3px;
        }
    
    
        .image-container :hover {
            transition: 0.5s;
            color: white;
         }


        .post {
            position: absolute;
            top: 50px; 
            left: 55px;  
            left: 43px;  
            background-color: transparent;
            border-color: white;
            border: 2px solid rgba(255, 255, 255);
            padding: 10px 20px;
            border-radius: 10px;
            font-size: 16px;
            font-weight: bold;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin: 30px;
            text-decoration: none;
        }

        .post:hover {
           border: 2px solid rgba(255, 255, 255, 0.5);
           color: rgba(255, 255, 255, 0.5);
           transition: 0.5s
        }
    </style>
    <main class="adopt">
        <div class="gallery-wrapper">
            <p class="gallery-text">Cats For Adoption</p>
            <a href="post.aspx" class="post">Post for Adoption</a>
            <div id="image-gallery"></div>
        </div>
    </main>
</asp:Content>
