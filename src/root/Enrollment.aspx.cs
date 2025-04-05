using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Added reference to data and quiz in the root, Adding coding_lms.data.
using coding_lms.data;

namespace coding_lms {

	public partial class Enrollment : System.Web.UI.Page {

		protected void Page_Load(object sender, EventArgs e) {

			// Add condition to check for enrollment on page load.
			if (!IsPostBack)
			{
				var InstructorDB; instructorDb = new InstructorDB();
				var IEnumurable<EnrollmentView> Enrollment = instructorDb.GetEnrollmentViews();

				// Data bind enrollment data in a repeater.
				enrollmentRepeater.DataSource = Enrollment;
				enrollmentRepeater.DataBind();
			}

		}
	}
}