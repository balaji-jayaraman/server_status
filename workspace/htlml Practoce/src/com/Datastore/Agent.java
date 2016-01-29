package com.Datastore;
import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;



import com.PMF_config.*;
import com.google.appengine.api.datastore.Cursor;
import com.google.appengine.datanucleus.query.JDOCursorHelper;


public class Agent {
	PersistenceManager pm=PMF.get().getPersistenceManager();
	
	//client emailid storage
	public void adduser(String email)
	{
		UserDetails u=new UserDetails();
		u.setClients(email);
		try
		{
			pm.makePersistent(u);
		}
		finally{
			pm.close();
		}
	}
	public List<UserDetails> retrieve_user() throws IOException
	{
		Query q = pm.newQuery(UserDetails.class);
	
		List<UserDetails> results = (List<UserDetails>) q.execute();

		 
		return results;
	}

	
			//admin view
	public void save(IssueDetails set)
	{
		IssueDetails store=new IssueDetails();
		store.setProductNo(set.getProductNo());
		store.setId(set.getId());
		store.setIssueDate(set.getIssueDate());
		store.setBegin_Time(set.getBegin_Time());
		store.setEnd_Time(set.getEnd_Time());
		store.setTitle(set.getTitle());
		store.setDescription(set.getDescription());
		store.setIssueType(set.getIssueType());
		store.setAdminName(set.getAdminName());
		store.setEmailnotification(set.getEmailnotification());
		try
		{
			pm.makePersistent(store);
		}
		finally{
			pm.close();
		}
	}
	
	public List<IssueDetails> retrieve()
	{

		Query q = pm.newQuery(IssueDetails.class);
		/*q.setFilter("Title == lastNameParam");
		q.setOrdering("Title desc");
		q.declareParameters("String lastNameParam");
*/
		List<IssueDetails> results = (List<IssueDetails>) q.execute();

		/*Cursor cursor = JDOCursorHelper.getCursor(results);
		String cursorstring=cursor.toWebSafeString();
		Cursor decodedCursor = Cursor.fromWebSafeString(cursorstring);
		
		q.setOrdering("ProductNo asc");
		 List<IssueDetails> nextBatch = (List<IssueDetails>) q.execute(decodedCursor);
		*/ 
		return results;
		

	}
				//user view
	public List<IssueDetails> retrieve2() throws IOException
	{
		Query q = pm.newQuery(IssueDetails.class);
	
		List<IssueDetails> results = (List<IssueDetails>) q.execute();

		 
		return results;
	}

	public List<IssueDetails> filteration(String id) 
	{
					Query q = pm.newQuery(IssueDetails.class);
		q.setFilter("Id==id");

		q.declareParameters("String id");

		List<IssueDetails> issueresults = (List<IssueDetails>) q.execute(id);
		

		return issueresults;
			
			

	}
	
							//deleting data
	public void dodelete(long id)
	{
		
			IssueDetails d=pm.getObjectById(IssueDetails.class, id);
			try{
			  pm.deletePersistent(d);
			}
			finally{
				pm.close();
			}
		
	}
	

}
