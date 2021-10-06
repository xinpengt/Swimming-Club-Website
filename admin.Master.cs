using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupAss
{
    public partial class admin : System.Web.UI.MasterPage
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SwimmClubCon"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lbLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            HttpCookie cookie = Request.Cookies["UserInfo"];
            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("~/Default.aspx");
        }
    }
}