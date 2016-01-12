package com.Datastore;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class IssueDetails {
	@PrimaryKey
	@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
	 private Key key;
	
	@Persistent
	private String ProductNo;
		
	@Persistent
	private String Id;
	
	@Persistent
	private String IssueDate;
	
	@Persistent
	private String Begin_Time;
	
	@Persistent
	private String End_Time;
	
	@Persistent 
	private String Title;
	
	@Persistent
	private String Description;
	
	@Persistent 
	private String IssueType;
	
	
	

	public String getProductNo() {
		return ProductNo;
	}

	public void setProductNo(String productNo) {
		ProductNo = productNo;
	}

	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	public String getIssueDate() {
		return IssueDate;
	}

	public void setIssueDate(String issueDate) {
		IssueDate = issueDate;
	}

	public String getBegin_Time() {
		return Begin_Time;
	}

	public void setBegin_Time(String begin_Time) {
		Begin_Time = begin_Time;
	}

	public String getEnd_Time() {
		return End_Time;
	}

	public void setEnd_Time(String end_Time) {
		End_Time = end_Time;
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

	public String getIssueType() {
		return IssueType;
	}

	public void setIssueType(String issueType) {
		IssueType = issueType;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("IssueDetails [ProductNo=");
		builder.append(ProductNo);
		builder.append(", Id=");
		builder.append(Id);
		builder.append(", IssueDate=");
		builder.append(IssueDate);
		builder.append(", Begin_Time=");
		builder.append(Begin_Time);
		builder.append(", End_Time=");
		builder.append(End_Time);
		builder.append(", Title=");
		builder.append(Title);
		builder.append(", Description=");
		builder.append(Description);
		builder.append(", IssueType=");
		builder.append(IssueType);
		builder.append("]");
		return builder.toString();
	}
	
	
	
	
}
