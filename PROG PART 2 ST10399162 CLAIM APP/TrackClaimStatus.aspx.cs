using System;

namespace PROG_PART_2_ST10399162_CLAIM_APP
{
    public partial class TrackClaimStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void TrackClaim_Click(object sender, EventArgs e)
        {
            int claimID = int.Parse(ClaimID.Text);

            // Find claim by ID and display status (pseudo code)
            // var claim = dbContext.Claims.FirstOrDefault(c => c.ClaimID == claimID);
            // if (claim != null)
            // {
            //     ClaimStatusLabel.Text = $"Claim ID {claimID} is {claim.ClaimStatus}";
            // }
            // else
            // {
            //     ClaimStatusLabel.Text = "Claim not found.";
            // }
        }
    }
}
