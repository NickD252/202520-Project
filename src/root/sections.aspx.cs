using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using coding_lms.data;
using Newtonsoft.Json.Linq;
using System.IO;
using static System.Collections.Specialized.BitVector32;
using System.Text.RegularExpressions;


namespace coding_lms
{
	public partial class SectionView : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                string url = HttpContext.Current.Request.Url.AbsoluteUri;
                string delimiter = "/";
                string result = url.Substring(url.IndexOf(delimiter) + delimiter.Length);

                var instructorDb = new InstructorDB();

                if (result.StartsWith("sections"))
                {
                    var sections = instructorDb.GetSectionsView();
                    sectionsTable.DataSource = sections;
                    sectionsTable.DataBind();
                }
                else
                {
                    string pattern = @"(?:sections/trm_|/trm_)(\d+)$";
                    Match match = Regex.Match(result, pattern);

                    if (match.Success)
                    {
                        int myInt = Int32.Parse(match.Groups[1].Value);
                        var sections = instructorDb.GetSectionsView(myInt);
                        sectionsTable.DataSource = sections;
                        sectionsTable.DataBind();
                    }
                    else
                    {
                        // Fallback to default loading
                        var sections = instructorDb.GetSectionsView();
                        sectionsTable.DataSource = sections;
                        sectionsTable.DataBind();
                    }
                }
            }


        }

    }
		
}
