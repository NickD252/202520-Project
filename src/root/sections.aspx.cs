using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using coding_lms.data;

namespace coding_lms
{
	public partial class SectionView : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
		     if (!IsPostBack)
			 {
				var instructordb = new InstructorDB();
				var sections = instructordb.GetSectionsView(); 

				sectionsTable.DataSource = sections;
				sectionsTable.DataBind();
			 }
		}
	}
}