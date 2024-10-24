<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubmitClaim.aspx.cs" Inherits="PROG_PART_2_ST10399162_CLAIM_APP.SubmitClaim" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Submit Claim</title>
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

        input, textarea, button {
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
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <h1>Submit Claim</h1>
    </header>

    <!-- Navigation Bar -->
    <nav>
    <a href="Home.aspx">Home</a>
    <a href="SubmitClaim.aspx">Submit Claim</a>
    <a href="TrackClaimStatus.aspx">Track Claims</a> <!-- Link to Track Claims -->
    <a href="LectureProfile.aspx">Lecture Profile</a> <!--  Link to Lecture Profile -->
    <a href="Logout.aspx">Logout</a>
</nav>

    <!-- Claim Submission Form -->
    <form id="claimForm" runat="server" method="post" enctype="multipart/form-data">
        <div>
            <label for="lecturerName">Lecturer Name</label>
            <asp:TextBox ID="LecturerName" runat="server" CssClass="form-control" required="true" />
        </div>

        <div>
            <label for="email">Email</label>
            <asp:TextBox ID="Email" runat="server" TextMode="Email" CssClass="form-control" required="true" />
        </div>

        <div>
            <label for="cellNumber">Cell Number</label>
            <asp:TextBox ID="CellNumber" runat="server" TextMode="Phone" CssClass="form-control" required="true" />
        </div>

        <div>
            <label for="programCode">Program Code</label>
            <asp:TextBox ID="ProgramCode" runat="server" CssClass="form-control" required="true" />
        </div>

        <div>
            <label for="moduleCode">Module Code</label>
            <asp:TextBox ID="ModuleCode" runat="server" CssClass="form-control" required="true" />
        </div>

        <div>
            <label for="hoursWorked">Hours Worked</label>
            <asp:TextBox ID="HoursWorked" runat="server" TextMode="Number" CssClass="form-control" required="true" />
        </div>

        <div>
            <label for="hourlyRate">Hourly Rate</label>
            <asp:TextBox ID="HourlyRate" runat="server" TextMode="Number" CssClass="form-control" required="true" />
        </div>

        <div>
            <label for="additionalNotes">Additional Notes</label>
            <asp:TextBox ID="AdditionalNotes" runat="server" TextMode="MultiLine" CssClass="form-control" />
        </div>

        <div>
            <label for="fileUpload">Upload Supporting Document (PDF, DOCX, XLSX)</label>
            <asp:FileUpload ID="FileUpload" runat="server" CssClass="form-control" />
        </div>

        <div>
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="SubmitClaim_Click" />
        </div>
    </form>
</body>
</html>
