<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PROG_PART_2_ST10399162_CLAIM_APP.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lecturer Home</title>
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

        .card {
            border-radius: 10px;
            background-color: #007bff;
            color: white;
            padding: 20px;
            margin-bottom: 20px;
            text-align: center;
            transition: background-color 0.3s;
        }

        .card:hover {
            background-color: #0056b3;
        }

        .card h2 {
            margin-bottom: 15px;
            font-size: 1.5rem;
        }

        .card p {
            font-size: 1rem;
        }

        .dashboard {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .dashboard-item {
            flex: 1;
            min-width: 300px;
            max-width: 45%;
            margin: 10px;
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

            .dashboard {
                flex-direction: column;
            }

            .dashboard-item {
                max-width: 100%;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <h1>Welcome, Lecturer!</h1>
    </header>

    <!-- Navigation Bar -->
    <nav>
    <a href="Home.aspx">Home</a>
    <a href="SubmitClaim.aspx">Submit Claim</a>
    <a href="TrackClaimStatus.aspx">Track Claims</a> <!-- Link to Track Claims -->
    <a href="LectureProfile.aspx">Lecture Profile</a> <!-- Link to Lecture Profile -->
    <a href="Logout.aspx">Logout</a>
</nav>


    <!-- Content Section -->
    <div class="container">
        <h2>Dashboard Overview</h2>
        <div class="dashboard">
            <!-- Card 1: Submit Claim -->
            <div class="dashboard-item">
                <div class="card">
                    <h2>Submit a Claim</h2>
                    <p>Easily submit claims for the hours worked and review past submissions.</p>
                    <a href="SubmitClaim.aspx" class="btn">Submit Now</a>
                </div>
            </div>

            <!-- Card 2: View Claims -->
            <div class="dashboard-item">
                <div class="card">
                    <h2>View Submitted Claims</h2>
                    <p>Review and track the status of your submitted claims.</p>
                    <a href="TrackClaimStatus.aspx" class="btn">View Claims</a> <!-- Updated Link -->
                </div>
            </div>

            <!-- Card 3: Access Resources -->
            <div class="dashboard-item">
                <div class="card">
                    <h2>Access Resources</h2>
                    <p>Download teaching materials, guidelines, and other important documents.</p>
                    <a href="Resources.aspx" class="btn">Access Resources</a>
                </div>
            </div>

            <!-- Card 4: Profile -->
            <div class="dashboard-item">
                <div class="card">
                    <h2>Manage Profile</h2>
                    <p>Update your profile information and settings.</p>
                    <a href="Profile.aspx" class="btn">Update Profile</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Lecturer Claims Management System | All Rights Reserved</p>
    </footer>
</body>
</html>
