using System;

namespace coding_lms.data {
		public Student(string srn) {
	public class Student : StudentView {
			this._srn = srn;
		}

		private void Init() {
			// Initialize DB Connection

			// Submit Query to obtian Student Information

		}

		private long _id;
		public long ID {
			get { return _id; }
			set { _id = value; }
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