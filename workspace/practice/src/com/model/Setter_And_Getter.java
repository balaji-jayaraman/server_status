package com.model;

public class Setter_And_Getter {
	int Begin_hrs;
	 int Begin_mins;
	int End_hrs;
	 int End_mins;
	 String Title;
	 String Description;
	 String issue;
	 public int getBegin_hrs() {
			return Begin_hrs;
		}
		public void setBegin_hrs(int begin_hrs) {
			Begin_hrs = begin_hrs;
		}
		public int getBegin_mins() {
			return Begin_mins;
		}
		public void setBegin_mins(int begin_mins) {
			Begin_mins = begin_mins;
		}
		public int getEnd_hrs() {
			return End_hrs;
		}
		public void setEnd_hrs(int end_hrs) {
			End_hrs = end_hrs;
		}
		public int getEnd_mins() {
			return End_mins;
		}
		public void setEnd_mins(int end_mins) {
			End_mins = end_mins;
		}
		public String getTitle() {
			return Title;
		}
		public void setTitle(String title) {
			Title = title;
		}
		public String getDescription() {
			return Description;
		}
		public void setDescription(String description) {
			Description = description;
		}
		public String getIssue() {
			return issue;
		}
		public void setIssue(String issue) {
			this.issue = issue;
		}
		 @Override
		 public String toString() {
		 	StringBuilder builder = new StringBuilder();
		 	builder.append("Setter_And_Getter [Begin_hrs=");
		 	builder.append(Begin_hrs);
		 	builder.append(", Begin_mins=");
		 	builder.append(Begin_mins);
		 	builder.append(", End_hrs=");
		 	builder.append(End_hrs);
		 	builder.append(", End_mins=");
		 	builder.append(End_mins);
		 	builder.append(", Title=");
		 	builder.append(Title);
		 	builder.append(", Description=");
		 	builder.append(Description);
		 	builder.append(", issue=");
		 	builder.append(issue);
		 	builder.append("]");
		 	return builder.toString();
		 }


}
