using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using coding_lms.data;

namespace coding_lms
{
	public partial class students : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

			if (!IsPostBack)
			{

				var instrctDB = new InstructorDB();
				var students = instrctDB.GetStudentsView("202520-23456");

				studentRepeat.DataSource = students;
				studentRepeat.DataBind();

			}



		}
	}
}