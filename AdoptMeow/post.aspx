<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="post.aspx.cs" Inherits="AdoptMeow.WebForm2" %> 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>

        h2{
            padding: 0 0 70px 0;
        }

        body {
            background-color: #282828;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        main {
            color: white;
            font-size: 30px;
            text-align: center;
            margin-bottom: 30px;
        }

        .form-container {
            background-color: #333;
            padding: 20px;
            border-radius: 10px;
            width: 100%;
            max-width: 600px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2);
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .input-box {
            margin: 30px;
            display: flex;
            flex-direction: column;
            gap: 5px;
        }

        .input-box label {
            font-size: 18px;
            color: #ccc;
        }

        .input-box input,
        .input-box textarea {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
            background-color: #444;
            color: white;
            display: block;
        }

        .input-box textarea {
            resize: vertical;
            min-height: 150px;
        }

        .btn {
            background-color: transparent;
            width: 515px;
            border: 2px solid;
            color: white;
            padding: 12px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            margin: 60px 0 0 0;
            backdrop-filter: blur(20px);
            box-shadow: 0 0 30px rgba(0,0,0, rgba(255,255,255,0.5));
        }

        .btn:hover {
            color: rgba(255, 255, 255, 0.5);
            transition: 0.5s;
            border: 2px solid rgba(255, 255, 255, 0.5);
        }
        

        /* Remove the list dots */
        ul {
            list-style-type: none;
            padding: 0;
        }

        @media (max-width: 768px) {
            .form-container {
                width: 90%;
            }

            main {
                font-size: 24px;
            }
        }

        li {
            margin: 30px;
        }
    </style>

    <main>

        <form id="adoption-form" action="post.aspx" method="post" enctype="multipart/form-data" class="form-container">
            <ul>
                <li>
                    <h2>Post Your Cat for Adoption</h2>
                </li>
                <li>
                    <!-- Cat Name Input -->
                    <div class="input-box">
                        <label for="cat-name">Cat's Name</label>
                        <input type="text" id="cat-name" name="cat-name" required>
                    </div>
                </li>

                <li>
                    <!-- Description Input -->
                    <div class="input-box">
                        <label for="cat-description">Description</label>
                        <textarea id="cat-description" name="cat-description" rows="4" required></textarea>
                    </div>
                </li>

                <li>
                    <!-- Image Upload Input -->
                    <div class="input-box">
                        <label for="cat-image">Upload a Picture</label>
                        <input type="file" id="cat-image" name="cat-image" accept="image/*" required>
                    </div>
                </li>

                <li>
                    <!-- Submit Button -->
                    <button type="submit" class="btn">Post for Adoption</button>
                </li>
            </ul>
        </form>
    </main>
</asp:Content>
