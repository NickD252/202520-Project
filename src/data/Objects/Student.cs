using System;

namespace coding_lms.data {
		public Student(string srn) {
	public class Student : StudentView {
		public Student() {
			Init ();
		}
			this._srn = srn;
		}

		private void Init() {
			// Initialize DB Connection

			// Submit Query to obtian Student Information

		}

		private string _srn;
		public string SRN {
			get { return _srn; }
			set { _srn = value; }
		}

		public string FullName {
			get { return $"{this.LastName}, {this.FirstName}"; }
		}


	}
}