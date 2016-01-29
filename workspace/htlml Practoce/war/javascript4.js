$(document).ready(function(){

	var d = new Date();
	$(".child_2_1").html(d.toDateString());
	var months=["January","February","March","April","May","June","July","August","September","October","November","December"];
	
	$("#99").html(retrievedate(0));
	$("#98").html(retrievedate(-1));
	$("#97").html(retrievedate(-2));
	$("#96").html(retrievedate(-3));
	$("#95").html(retrievedate(-4));
	$("#94").html(retrievedate(-5));
	$("#93").html(retrievedate(-6));
	$("#92").html(retrievedate(-7));
	$("#91").html(retrievedate(-8));
	
	 
	$.ajax({
		type : "POST",
		url : "/retrieve2",
		

		success : function(result){
								$.each(result,function(i,data)
															{
																var jsondate=data.issueDate;
																var jsonid=data.id;

																for(var i=91;i<100;i++)
																	{
																	;
																	var currentdate=$("#"+i).text();
																	
																		if(currentdate==jsondate)
																			{
																				if(data.productNo==="Product D")
																					{
																					var insertid=i+40;
																					}
																				else if(data.productNo==="Product C")
																					{
																					var insertid=i+30;
																					}
																				else if(data.productNo==="Product B")
																					{
																					var insertid=i+20;
																					}
																				else if(data.productNo==="Product A")
																					{
																					var insertid=i+10;
																					}
																			}
																		
																	}
																
																
																if(data.issueType=="service disruption")
																{
																	var issuesymbol='orange';
																}
																else if(data.issueType=="service outage")
																{
																	var issuesymbol='red';
																}
															
																$('#'+insertid).html("<a href='/issue/"+data.id+"'><div class="+issuesymbol+"></div></a>");
																
															});
								
								}
		});

});
function retrievedate(a)
{
	var date = new Date();
	var months=["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
	date.setDate(date.getDate() + a);
	return date.getDate()+'/'+months[date.getMonth()]+'/'+date.getFullYear();
}
