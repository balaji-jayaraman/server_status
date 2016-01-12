package com.controller_main;


import java.io.IOException;
import java.util.List;






import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;






import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.Datastore.Agent;
import com.Datastore.IssueDetails;




@Controller
public class Controller1 {

		@RequestMapping(value="/user",method=RequestMethod.GET)
		public ModelAndView user1() 
		{
		
		ModelAndView b =new ModelAndView("client");
		return b;
		}
		
					//admin page
		@RequestMapping(value="/store",method={RequestMethod.POST})
		public void storage(@ModelAttribute("store")IssueDetails store,HttpServletResponse res) throws IOException
		{
			Agent a=new Agent();
			a.save(store);
			res.getWriter().write("successful");
	
		}
		
		
		
		
		
		@RequestMapping(value="/retrieve",method={RequestMethod.POST})
		public void storage(HttpServletResponse res) throws IOException
		{
			
			Agent a=new Agent();
			List<IssueDetails> list=(List<IssueDetails>)a.retrieve(); 
			ObjectMapper mapp=new ObjectMapper();
			String send=mapp.writeValueAsString(list);
	
			res.setContentType("application/json");
			res.setCharacterEncoding("UTF-8");
			res.getWriter().write(send.toString());
	
		}
		
							//user view
		@RequestMapping(value="/retrieve2",method={RequestMethod.POST})
		public void storage1(HttpServletResponse res) throws IOException
		{
			
			Agent a=new Agent();
			List<IssueDetails> list=(List<IssueDetails>)a.retrieve2(); 
			ObjectMapper mapp=new ObjectMapper();
			String send=mapp.writeValueAsString(list);
			
			res.setContentType("application/json");
			res.setCharacterEncoding("UTF-8");
			res.getWriter().write(send.toString());
	
		}

		@RequestMapping(value="/issue/{id}",method={RequestMethod.GET})
		public ModelAndView fetch(@PathVariable("id") String id1,HttpServletRequest req) throws IOException
		{
			
			Agent a1=new Agent();
			List<IssueDetails> list=(List<IssueDetails>)a1.filteration(id1); 
		
			req.setAttribute("dataretrieve",list);
			
			
			return new ModelAndView("issue");
	
		}


						//view   summary
		@RequestMapping(value="/fetch",method={RequestMethod.GET})
		public ModelAndView fetchall(HttpServletRequest req) throws IOException
		{
			
			Agent a=new Agent();
			List<IssueDetails> list=(List<IssueDetails>)a.retrieve(); 
			req.setAttribute("dataretrieve",list);
			
			
			return new ModelAndView("issue");
		}
	


}
