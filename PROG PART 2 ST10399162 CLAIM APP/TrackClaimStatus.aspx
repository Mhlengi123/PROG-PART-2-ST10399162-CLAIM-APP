<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrackClaimStatus.aspx.cs" Inherits="PROG_PART_2_ST10399162_CLAIM_APP.TrackClaimStatus" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Claims</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #007bff;
            color: white;
            padding: 10px 0;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 2.5rem;
        }

        nav {
            display: flex;
            justify-content: center;
            background-color: #0056b3;
            padding: 10px 0;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 1.1rem;
            font-weight: bold;
        }

        nav a:hover {
            text-decoration: underline;
        }

        form {
            margin: 20px;
            padding: 15px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
        }

        div {
            margin-bottom: 10px;
        }

        label {
            display: block;
            font-weight: bold;
        }

        input, button {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
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

        .container {
            width: 90%;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        footer {
            text-align: center;
            background-color: #007bff;
            color: white;
            padding: 15px 0;
            margin-top: 20px;
        }

        @media (max-width: 768px) {
            nav {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <h1>View Claims</h1>
    </header>

    <!-- Navigation Bar -->
    <nav>
    <a href="Home.aspx">Home</a>
    <a href="SubmitClaim.aspx">Submit Claim</a>
    <a href="TrackClaimStatus.aspx">Track Claims</a> <!-- Link to Track Claims -->
    <a href="LectureProfile.aspx">Lecture Profile</a> <!-- Link to Lecture Profile -->
    <a href="Logout.aspx">Logout</a>
</nav>

    <!-- Claim Tracking Form -->
    <div class="container">
        <form id="trackForm" runat="server" method="post">
            <div>
                <label for="claimID">Enter Claim ID</label>
                <asp:TextBox ID="ClaimID" runat="server" CssClass="form-control" required="true" />
            </div>

            <div>
                <asp:Button ID="TrackButton" runat="server" Text="Track Claim" CssClass="btn btn-primary" OnClick="TrackClaim_Click" />
            </div>

            <div>
                <h3>Claim Status:</h3>
                <asp:Label ID="ClaimStatusLabel" runat="server" Text="" />
            </div>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Statuses]"></asp:SqlDataSource>
        </form>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Lecturer Claims Management System | All Rights Reserved</p>
    </footer>
</body>
</html>
