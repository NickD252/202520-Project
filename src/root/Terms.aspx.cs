using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using coding_lms.data;
using Microsoft.Ajax.Utilities;

namespace coding_lms
{
    public partial class Terms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                var instructorDB = new InstructorDB();
                var terms = instructorDB.GetTerms();

                termsRepeater.DataSource = terms;
                termsRepeater.DataBind();
             }
            
        }
    }
}