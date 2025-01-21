<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="AdoptMeow.WebForm3" %> 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="login-style.css"> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <div class="wrapper">
            <div class="form-box login">
                <h2>Login</h2>
                <form id="form" action="#">
                    <div class="input-box">
                        <span class="icon"><ion-icon name="mail"></ion-icon></span>
                        <input id="login-email" type="text" required>
                        <label>Email</label>
                    </div>
                    <div class="input-box">
                        <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
                        <input id="login-password" type="password" required>
                        <label>Password</label>
                    </div>
                    <button type="submit" class="btn">Login</button>
                    <div class="login-register">
                        <p>Don't have an account? <a href="#" class="register-link">Register</a></p>
                    </div>
                </form>
            </div>

            <div class="form-box register">
                <h2>Registration</h2>
                <form id="register-form" action="#">
                    <div class="input-box">
                        <span class="icon"><ion-icon name="person"></ion-icon></span>
                        <input id="username" type="text" required>
                        <label>Username</label>
                    </div>
                    <div class="input-box">
                        <span class="icon"><ion-icon name="mail"></ion-icon></span>
                        <input id="email" type="text" required>
                        <label>Email</label>
                    </div>
                    <div class="input-box">
                        <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
                        <input id="password" type="password" required>
                        <label>Password</label>
                    </div>
                    <button type="submit" class="btn">Register</button>
                    <div class="login-register">
                        <p>Already have an account? <a href="#" class="login-link">Login</a></p>
                    </div>
                </form>
            </div>
        </div>

        <script>
            document.addEventListener("DOMContentLoaded", () => {
                const wrapper = document.querySelector('.wrapper');
                const loginLink = document.querySelector('.login-link');
                const registerLink = document.querySelector('.register-link');
                const registerForm = document.querySelector('#register-form');

                registerLink.addEventListener('click', () => {
                    wrapper.classList.add('active');
                });

                loginLink.addEventListener('click', () => {
                    wrapper.classList.remove('active');
                });

                function check_fname() {
                    const username = document.getElementById("username").value;
                    if (username.length < 2) {
                        window.alert("Username length is too short");
                        return false;
                    }
                    for (let i = 0; i < username.length; i++) {
                        const charCode = username.charCodeAt(i);
                        if (!((charCode >= 65 && charCode <= 90) || (charCode >= 97 && charCode <= 122) || (charCode >= 1488 && charCode <= 1514))) {
                            window.alert("Only letters are allowed in the username");
                            return false;
                        }
                    }
                    return true;
                }

                function check_email() {
                    const email = document.getElementById("email").value;
                    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                    if (!emailPattern.test(email)) {
                        window.alert("Invalid email format");
                        return false;
                    }
                    return true;
                }

                function check_pass() {
                    const password = document.getElementById("password").value;
                    if (password.length !== 6) {
                        window.alert("Password length must be 6 characters");
                        return false;
                    }
                    if (password.charAt(0) === password.charAt(password.length - 1)) {
                        window.alert("First and last characters of the password must not match");
                        return false;
                    }
                    if (password.indexOf('@') !== -1 && password.lastIndexOf('@') === password.indexOf('@')) {
                        window.alert("Only one @ is not allowed in the password");
                        return false;
                    }
                    return true;
                }

                function validateRegistrationForm() {
                    return check_fname() && check_email() && check_pass();
                }

                registerForm.addEventListener("submit", (event) => {
                    if (!validateRegistrationForm()) {
                        event.preventDefault(); // Prevent submission if validation fails
                    }
                });
            });
        </script>


        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    </main>
</asp:Content>
