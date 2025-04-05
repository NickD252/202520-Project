using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/*Added reference to data and quiz in the root, adding coding_lms.data using directive*/
using coding_lms.data;

namespace coding_lms
{
	public partial class quizzes : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			/*Added condition to check for quizzes on page load*/
			if (!IsPostBack)
			{
				var instructorDb = new InstructorDB();
				var quizzes = instructorDb.GetQuizzesView();
                var questions = instructorDb.GetQuestion(id: 1);

				quizRepeater.DataSource = quizzes;
				quizRepeater.DataBind();
            }
		}
	}
}