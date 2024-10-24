using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace PROG_PART_2_ST10399162_CLAIM_APP
{
    public partial class Login : Page
    {
        // Connection string to connect to the database
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            // Open the connection when the page loads
            if (!IsPostBack)
            {
                con.Open();
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            try
            {
                // Use parameterized queries to prevent SQL injection
                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Users WHERE Username = @Username AND Password = @Password", con);

                // Adding parameters
                cmd.Parameters.AddWithValue("@Username", Username.Text);
                cmd.Parameters.AddWithValue("@Password", Password.Text);

                // Execute the command
                int userCount = (int)cmd.ExecuteScalar();

                if (userCount > 0)
                {
                    // Redirect to Home page on successful login
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    // Display error message for invalid credentials
                    ErrorMessage.Text = "Invalid username or password.";
                }
            }
            catch (Exception ex)
            {
                // Handle exception (e.g., log the error, display error message)
                ErrorMessage.Text = "Error: " + ex.Message;
            }
            finally
            {
                // Ensure the connection is closed
                con.Close();
            }
        }
    }
}
