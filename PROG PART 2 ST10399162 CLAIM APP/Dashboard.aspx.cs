using System;
using System.Configuration;
using System.Data.SqlClient;

namespace PROG_PART_2_ST10399162_CLAIM_APP
{
    public partial class Dashboard : System.Web.UI.Page
    {
        // Connection string to the ClaimsManagementDB database
        private string connectionString = "Data Source=(LocalDB);MSSQLLocalDB;AttachDbFilename='C:;Users;RC_Student_lab;source\repos;PROG PART 2 ST10399162 CLAIM APP;PROG PART 2 ST10399162 CLAIM APP;App_Data;ClaimsManagementDB.mdf';Integrated Security=True;";
        public int PendingClaimsCount { get; set; }
        public int ApprovedClaimsCount { get; set; }
        public int RejectedClaimsCount { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fetch the claim status counts
                GetClaimStatusCounts();
            }
        }

        private void GetClaimStatusCounts()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                string query = "SELECT ClaimStatus, COUNT(*) as StatusCount FROM Claims GROUP BY ClaimStatus";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        int status = Convert.ToInt32(reader["ClaimStatus"]);
                        int count = Convert.ToInt32(reader["StatusCount"]);

                        if (status == 1) // Pending
                        {
                            PendingClaimsCount = count;
                        }
                        else if (status == 2) // Approved
                        {
                            ApprovedClaimsCount = count;
                        }
                        else if (status == 3) // Rejected
                        {
                            RejectedClaimsCount = count;
                        }
                    }
                }
            }
        }
    }
}
