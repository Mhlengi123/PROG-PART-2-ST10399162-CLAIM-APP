<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LectureProfile.aspx.cs" Inherits="PROG_PART_2_ST10399162_CLAIM_APP.SubmitClaim" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Claim History</title>
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

        .container {
            width: 90%;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        footer {
            text-align: center;
            background-color: #007bff;
            color: white;
            padding: 15px 0;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <h1>Claim History</h1>
    </header>

    <!-- Navigation Bar -->
    <nav>
        <a href="Home.aspx">Home</a>
        <a href="SubmitClaim.aspx">Submit Claim</a>
        <a href="TrackClaimStatus.aspx">View Claims</a>
        <a href="Profile.aspx">Profile</a>
        <a href="Logout.aspx">Logout</a>
    </nav>

    <!-- Claim History Section -->
    <div class="container">
        <h2>Your Claim History</h2>
        <table>
            <thead>
                <tr>
                    <th>Claim ID</th>
                    <th>Date Submitted</th>
                    <th>Status</th>
                    <th>Amount</th>
                    <th>Comments</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>CLM00123</td>
                    <td>2024-01-15</td>
                    <td>Approved</td>
                    <td>R500.0</td>
                    <td>Claim processed successfully.</td>
                </tr>
                <tr>
                    <td>CLM00124</td>
                    <td>2024-02-10</td>
                    <td>Pending</td>
                    <td>R500.0</td>
                    <td>Waiting for additional documentation.</td>
                </tr>
                <tr>
                    <td>CLM00125</td>
                    <td>2024-03-05</td>
                    <td>Denied</td>
                    <td>R0.0</td>
                    <td>Claim was not eligible.</td>
                </tr>
                <tr>
                    <td>CLM00126</td>
                    <td>2024-04-20</td>
                    <td>Approved</td>
                    <td>R250</td>
                    <td>Claim processed successfully.</td>
                </tr>
                <tr>
                    <td>CLM00127</td>
                    <td>2024-05-30</td>
                    <td>Approved</td>
                   <td>R250</td>
                    <td>Claim processed successfully.</td>
                </tr>
            </tbody>
        </table>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Lecturer Claims Management System | All Rights Reserved</p>
    </footer>
</body>
</html>
