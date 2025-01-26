<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="AdoptMeow.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        main{
            color: white;
        }

        .textbox{
            margin: 50px 550px 0 550px;
            padding: 30px;
            border: 2px solid rgba(255, 255, 255, 0.5);
            border-radius: 20px;
            backdrop-filter: blur(20px);
            box-shadow: 0 0 30px rgba(0,0,0, rgba(255,255,255,0.5));
        }

        p{
            font-size: 20px;
        }

    </style>
    <div class = "textbox">
        <p> 
    Hi! My name is Rotem, and I’m 17 years old. I’m a huge animal lover, especially when it comes to cats. 🐾
    I believe every cat deserves a loving home, and adopting is such an important way to give them a second chance at happiness. 
    There are so many cats waiting for someone to care for them, and by adopting, we not only save a life but also make room for shelters
    to help even more animals in need.
    I’m excited to share my love and provide a warm, safe, and caring environment for a furry friend. 😺 Let’s make adoption the first option!
    
        </p>
    </div>
    
</asp:Content>
