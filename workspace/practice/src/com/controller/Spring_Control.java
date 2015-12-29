package com.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

import java.util.List;

import com.model.Product_A;
import com.model.Product_B;
import com.model.Product_C;
import com.model.Product_D;
import com.model.Setter_And_Getter;
import com.model.Strore;
import com.model.Retrieve;


@Controller
public class Spring_Control {
				
					// strore the data
	
	@RequestMapping(value="/product_A",method={RequestMethod.POST})
	public ModelAndView save01(@ModelAttribute("setter")Setter_And_Getter set)
	{
	Strore store=new Strore();
	store.save1(set);
	String result="successfully stored";/*
	ModelAndView view=new ModelAndView("success");
	view.addObject("", attributeValue)*/
	return new ModelAndView("success","sucess",result);
	}
	@RequestMapping(value="/product_B",method={RequestMethod.POST})
	public ModelAndView save02(@ModelAttribute("setter")Setter_And_Getter set)
	{
	Strore store=new Strore();
	store.save2(set);
	String result="successfully stored";/*
	ModelAndView view=new ModelAndView("success");
	view.addObject("", attributeValue)*/
	return new ModelAndView("success","sucess",result);
	}
	@RequestMapping(value="/product_C",method={RequestMethod.POST})
	public ModelAndView save03(@ModelAttribute("setter")Setter_And_Getter set)
	{
	Strore store=new Strore();
	store.save3(set);
	String result="successfully stored";/*
	ModelAndView view=new ModelAndView("success");
	view.addObject("", attributeValue)*/
	return new ModelAndView("success","sucess",result);
	}
	@RequestMapping(value="/product_D",method={RequestMethod.POST})
	public ModelAndView save04(@ModelAttribute("setter")Setter_And_Getter set)
	{
	Strore store=new Strore();
	store.save4(set);
	String result="successfully stored";/*
	ModelAndView view=new ModelAndView("success");
	view.addObject("", attributeValue)*/
	return new ModelAndView("success","sucess",result);
	}

							//retrieve the data
	
	@RequestMapping(value="/retrieve_Product_A" )
	public ModelAndView retrieve01(HttpServletRequest req)
	{
	Retrieve ret=new Retrieve();
	List<Product_A> str=ret.produc_A();
	req.setAttribute("A",str);
	return new ModelAndView("retrieve_A");
	}
	@RequestMapping(value="/retrieve_Product_B")
	public ModelAndView retrieve02(HttpServletRequest req)
	{
	Retrieve ret=new Retrieve();
	List<Product_B> str=ret.produc_B();
	req.setAttribute("B",str);
	return new ModelAndView("retrieve_B");
	}
	@RequestMapping(value="/retrieve_Product_C")
	public ModelAndView retrieve03(HttpServletRequest req)
	{
	Retrieve ret=new Retrieve();
	List<Product_C> str=ret.produc_C();
	req.setAttribute("C",str);
	return new ModelAndView("retrieve_C");
	}
	@RequestMapping(value="/retrieve_Product_D")
	public ModelAndView retrieve04(HttpServletRequest req)
	{
	Retrieve ret=new Retrieve();
	List<Product_D> str=ret.produc_D();
	req.setAttribute("D",str);
	return new ModelAndView("retrieve_D");
	}
	
	
	
}
