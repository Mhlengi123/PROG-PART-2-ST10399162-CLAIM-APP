<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="PROG_PART_2_ST10399162_CLAIM_APP.Dashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <h2>Claims Overview</h2>
    <div>
        <canvas id="claimsChart"></canvas>
    </div>

    <script>
        // Pseudo data for chart
        var data = {
            labels: ["Pending", "Approved", "Rejected"],
            datasets: [{
                label: "Claims",
                data: [10, 20, 5],
                backgroundColor: ['#f39c12', '#27ae60', '#e74c3c']
            }]
        };

        var ctx = document.getElementById("claimsChart").getContext("2d");
        var claimsChart = new Chart(ctx, {
            type: 'pie',
            data: data,
        });
    </script>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Claims]"></asp:SqlDataSource>
    </form>
</body>
</html>

