$(document).ready(function(){

	var d = new Date();
	$(".child_2_1").html(d.toDateString());
	var months=["January","February","March","April","May","June","July","August","September","October","November","December"];
	$(".month").html(months[d.getMonth()]);
	$.ajax({
		type : "POST",
		url : "/retrieve2",
		

		success : function(result){
								$.each(result,function(i,data)
															{
															if(data.issueType=="service disruption")
																{
																var issuesymbol='orange';
																}
															else if(data.issueType=="service outage")
																{
																var issuesymbol='red';
																}
															if(data.id!=null)
																{
																	var id=data.id;
																	$('#'+id).html("<a href='/issue/"+id+"'><div class="+issuesymbol+"></div></a>");
																}
															});
								
								}
		});

});

