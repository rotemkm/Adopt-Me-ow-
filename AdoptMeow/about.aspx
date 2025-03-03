<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="AdoptMeow.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        main {
            color: white;
        }

        .textbox {
            margin: 50px 550px 0 550px;
            padding: 30px;
            border: 2px solid rgba(255, 255, 255, 0.5);
            border-radius: 20px;
            backdrop-filter: blur(20px);
            box-shadow: 0 0 30px rgba(0,0,0, rgba(255,255,255,0.5));
        }

        a{
            list-style: none;
            display: inline-block;
            margin: 0 20px;
            text-decoration: none;
            color: white;
            text-align:center;
        }

        p {
            font-size: 20px;
        }

        table {
            width: 50%;
            margin: 20px auto;
            border-collapse: collapse;
            color: white;
            text-align: center;
        }

        th, td {
            padding: 10px;
            border: 2px solid rgba(255, 255, 255, 0.5);
        }

        th {
            background-color: rgba(255, 255, 255, 0.3);
        }
    </style>
    <div class="textbox">
        <p> 
            Hi! My name is Rotem, and I’m 17 years old. I’m a huge animal lover, especially when it comes to cats. 🐾
            I believe every cat deserves a loving home, and adopting is such an important way to give them a second chance at happiness. 
            There are so many cats waiting for someone to care for them, and by adopting, we not only save a life but also make room for shelters
            to help even more animals in need.
            I’m excited to share my love and provide a warm, safe, and caring environment for a furry friend. 😺 Let’s make adoption the first option!
        </p>
    </div>
    
    <table>
        <tr>
            <th>Breed</th>
            <th>Personality</th>
            <th>Fun Fact</th>
            <th>My Favorite</th>
        </tr>
        <tr>
            <td>Scottish Fold</td>
            <td>Sweet and calm</td>
            <td>Known for their unique folded ears</td>
            <td><input type="radio" name="adopt" value="Scottish Fold"></td>
        </tr>
        <tr>
            <td>Siamese</td>
            <td>Social and vocal</td>
            <td>They are known for their striking blue eyes</td>
            <td><input type="radio" name="adopt" value="Siamese"></td>
        </tr>
    </table>
    
    <div style="text-align: center; margin-top: 20px;">
        <label><input type="checkbox" name="agree"> Meow</label>
    </div>
</asp:Content>
