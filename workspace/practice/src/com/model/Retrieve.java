package com.model;

import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

import com.model.Product_A;
import com.google.appengine.api.datastore.Cursor;
import com.google.appengine.datanucleus.query.JDOCursorHelper;
import com.PMF_config.*;
public class Retrieve {
	PersistenceManager pm=PMF.get().getPersistenceManager();
	public List<Product_A> produc_A()
	{

		Query q = pm.newQuery(Product_A.class);
		q.setRange(0,8);
		List<Product_A> results = (List<Product_A>) q.execute();

		Cursor cursor = JDOCursorHelper.getCursor(results);
		String cursorstring=cursor.toWebSafeString();
		Cursor decodedCursor = Cursor.fromWebSafeString(cursorstring);
		 List<Product_A> nextBatch = (List<Product_A>) q.execute(decodedCursor);
		 
		return nextBatch;
	}
	public List<Product_B> produc_B()
	{

		Query q = pm.newQuery(Product_B.class);
		q.setRange(0,8);
		List<Product_B> results = (List<Product_B>) q.execute();

		Cursor cursor = JDOCursorHelper.getCursor(results);
		String cursorstring=cursor.toWebSafeString();
		Cursor decodedCursor = Cursor.fromWebSafeString(cursorstring);
		 List<Product_B> nextBatch = (List<Product_B>) q.execute(decodedCursor);
		 
		return nextBatch;
	}
	public List<Product_C> produc_C()
	{

		Query q = pm.newQuery(Product_C.class);
		q.setRange(0,8);
		List<Product_C> results = (List<Product_C>) q.execute();

		Cursor cursor = JDOCursorHelper.getCursor(results);
		String cursorstring=cursor.toWebSafeString();
		Cursor decodedCursor = Cursor.fromWebSafeString(cursorstring);
		 List<Product_C> nextBatch = (List<Product_C>) q.execute(decodedCursor);
		 
		return nextBatch;
	}
	public List<Product_D> produc_D()
	{

		Query q = pm.newQuery(Product_D.class);
		q.setRange(0,8);
		List<Product_D> results = (List<Product_D>) q.execute();

		Cursor cursor = JDOCursorHelper.getCursor(results);
		String cursorstring=cursor.toWebSafeString();
		Cursor decodedCursor = Cursor.fromWebSafeString(cursorstring);
		 List<Product_D> nextBatch = (List<Product_D>) q.execute(decodedCursor);
		 
		return nextBatch;
	}
}
