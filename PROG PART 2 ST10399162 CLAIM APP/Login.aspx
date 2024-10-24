<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PROG_PART_2_ST10399162_CLAIM_APP.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        form {
            margin: 20px auto;
            padding: 15px;
            border: 1px solid #ccc;
            border-radius: 10px;
            width: 300px;
            background-color: #f9f9f9;
        }

        input, button {
            width: 100%;
            padding: 8px;
            margin-top: 10px;
        }

        button {
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }
        .auto-style1 {
            height: 504px;
            width: 459px;
        }
        .auto-style2 {
            font-weight: normal;
            color: #FF3300;
        }
    </style>
</head>
<body style="height: 604px">
    <form id="loginForm" runat="server" class="auto-style1">
        <h2 class="auto-style2"><strong>Login</strong></h2>
        <div>
            <label for="Username">Username:</label>
            <asp:TextBox ID="Username" runat="server" CssClass="form-control" required="true" Width="441px" />
            <br />
            UserID<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <label for="Password">
            Password:</label>
            <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control" required="true" Width="437px" />
            <br />
            Email<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            RoleID<br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
        </div>
        <div>
            <asp:Button ID="LoginButton" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="LoginButton_Click" style="background-color: #66FF66" />

        </div>
        <asp:Label ID="ErrorMessage" runat="server" Text="" CssClass="error-message" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
    </form>
</body>
</html>
