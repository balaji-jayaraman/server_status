package com.model;


import javax.jdo.PersistenceManager;

import com.PMF_config.PMF;
import com.model.Setter_And_Getter;
import com.model.Product_A;
import com.model.Product_B;


public class Strore {
	PersistenceManager pm=PMF.get().getPersistenceManager();
	public void save1(Setter_And_Getter a)
	{
		//Pojo a=new Pojo();

		Product_A a1=new Product_A(a.getBegin_hrs(),a.getBegin_mins(),a.getEnd_hrs(),a.getEnd_mins(),a.getTitle(),a.getDescription(),a.getIssue());
		try{
			pm.makePersistent(a1);
		}
		finally
		{
			pm.close();
		}

	}


	public void save2(Setter_And_Getter a)
	{
		//Pojo a=new Pojo();

		Product_B a1=new Product_B(a.getBegin_hrs(),a.getBegin_mins(),a.getEnd_hrs(),a.getEnd_mins(),a.getTitle(),a.getDescription(),a.getIssue());
		try{
			pm.makePersistent(a1);
		}
		finally
		{
			pm.close();
		}

	}
	public void save3(Setter_And_Getter a)
	{
		//Pojo a=new Pojo();

		Product_C a1=new Product_C(a.getBegin_hrs(),a.getBegin_mins(),a.getEnd_hrs(),a.getEnd_mins(),a.getTitle(),a.getDescription(),a.getIssue());
		try{
			pm.makePersistent(a1);
		}
		finally
		{
			pm.close();
		}

	}
	public void save4(Setter_And_Getter a)
	{
		//Pojo a=new Pojo();

		Product_D a1=new Product_D(a.getBegin_hrs(),a.getBegin_mins(),a.getEnd_hrs(),a.getEnd_mins(),a.getTitle(),a.getDescription(),a.getIssue());
		try{
			pm.makePersistent(a1);
		}
		finally
		{
			pm.close();
		}

	}

}
