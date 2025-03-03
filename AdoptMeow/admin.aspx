
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="AdoptMeow.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        main {
            color: white;
            font-size: 30px;
            text-align: center;
        }      
    </style>
    
    <p>You are the admin</p>
    <h2>visitors count</h2>
    <h2><%=Application["count"] %></h2>
    <table border="1">
        <%= tablePrint %>
    </table>
</asp:Content>