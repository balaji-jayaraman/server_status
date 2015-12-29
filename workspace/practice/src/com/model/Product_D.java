package com.model;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Product_D {
	@PrimaryKey
	@Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
	 private Key key;
	
	@Persistent
	private int Begin_hrs;
	
	@Persistent
	private int Begin_mins;
	
	@Persistent
	private int End_hrs;
	
	@Persistent
	private int End_mins;
	
	@Persistent
	private String Title;
	
	@Persistent
	private String Description;
	@Persistent
	private String issue;
	
	

	public Product_D(int Begin_hrs,int Begin_mins,int End_hrs,int End_mins,String Title,String Description,String issue)
	{
		this.Begin_hrs=Begin_hrs;
		this.Begin_mins=Begin_mins;
		this.End_hrs=End_hrs;
		this.End_mins=End_mins;
		this.Title=Title;
		this.Description=Description;
		this.issue=issue;
	}


	


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
		builder.append("Product_D [key=");
		builder.append(key);
		builder.append(", Begin_hrs=");
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
