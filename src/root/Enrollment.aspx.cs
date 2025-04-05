using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Added reference to data and quiz in the root, Adding coding_lms.data.
using coding_lms.data;

namespace coding_lms {

	public partial class Enrollment : System.Web.UI.Page {

		protected void Page_Load(object sender, EventArgs e) {
			if (!IsPostBack)
			{


				string url = HttpContext.Current.Request.Url.AbsoluteUri;
				string delimiter = "/";
				string result = url.Substring(url.IndexOf(delimiter) + delimiter.Length);

				var instructorDb = new InstructorDB();

				string pattern = @"(?:Enrollment/sct_|/sct_)(\d+)$";
				Match match = Regex.Match(result, pattern);

				if (match.Success)
				{
					var sctId = match.Groups[1].Value;
					var Enrollment = instructorDb.GetEnrollmentViews(sctId);
					enrollmentRepeater.DataSource = Enrollment;
					enrollmentRepeater.DataBind();
				}
				else
				{
                    var Enrollment = instructorDb.GetEnrollmentViews();
                    enrollmentRepeater.DataSource = Enrollment;
                    enrollmentRepeater.DataBind();
                }
			}
		}
	}
}