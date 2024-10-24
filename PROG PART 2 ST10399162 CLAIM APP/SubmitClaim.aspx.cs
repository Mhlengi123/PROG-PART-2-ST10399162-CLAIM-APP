using System;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

namespace PROG_PART_2_ST10399162_CLAIM_APP
{
    public partial class SubmitClaim : System.Web.UI.Page
    {
        // Database connection string
      public  string connectionString = "Data Source=(LocalDB);MSSQLLocalDB;AttachDbFilename='C:;Users;RC_Student_lab;source\repos;PROG PART 2 ST10399162 CLAIM APP;PROG PART 2 ST10399162 CLAIM APP;App_Data;ClaimsManagementDB.mdf';Integrated Security=True;";

        protected void SubmitClaim_Click(object sender, EventArgs e)
        {
            // Ensure file upload control has a file
            if (FileUpload.HasFile)
            {
                try
                {
                    // Save the uploaded file to a directory on the server
                    string filename = Path.GetFileName(FileUpload.FileName);
                    string filePath = Server.MapPath("~/UploadedFiles/") + filename;
                    FileUpload.SaveAs(filePath);

                    // Insert claim into the database
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        con.Open();

                        string insertQuery = "INSERT INTO Claims (LecturerID, ProgramCode, ModuleCode, HoursWorked, HourlyRate, ClaimStatus, SupportingDocumentsPath) " +
                                             "VALUES (@LecturerID, @ProgramCode, @ModuleCode, @HoursWorked, @HourlyRate, @ClaimStatus, @SupportingDocumentsPath)";

                        using (SqlCommand cmd = new SqlCommand(insertQuery, con))
                        {
                            cmd.Parameters.AddWithValue("@LecturerID", 1); // Example lecturer ID, replace with actual ID
                            cmd.Parameters.AddWithValue("@ProgramCode", ProgramCode.Text);
                            cmd.Parameters.AddWithValue("@ModuleCode", ModuleCode.Text);
                            cmd.Parameters.AddWithValue("@HoursWorked", HoursWorked.Text);
                            cmd.Parameters.AddWithValue("@HourlyRate", HourlyRate.Text);
                            cmd.Parameters.AddWithValue("@ClaimStatus", 1); // Assuming 1 = Pending
                            cmd.Parameters.AddWithValue("@SupportingDocumentsPath", "~/UploadedFiles/" + filename);

                            cmd.ExecuteNonQuery();
                        }
                    }

                    // Success message
                    Response.Write("<script>alert('Claim submitted successfully!');</script>");
                }
                catch (Exception ex)
                {
                    // Display error message
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }
            else
            {
                // Display message for no file upload
                Response.Write("<script>alert('Please upload a supporting document.');</script>");
            }
        }
    }
}
