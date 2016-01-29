$(document).ready(function(){
	$('.clockpicker').clockpicker();
	var d = new Date();
	$(".child_2_1").html(d.toDateString());
	var months=["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
	
	$("#99").html(retrievedate(4));
	$("#98").html(retrievedate(3));
	$("#97").html(retrievedate(2));
	$("#96").html(retrievedate(1));
	$("#95").html(retrievedate(0));
	$("#94").html(retrievedate(-1));
	$("#93").html(retrievedate(-2));
	$("#92").html(retrievedate(-3));
	$("#91").html(retrievedate(-4));
	$("#today").html(retrievedate(0));
	
	$.ajax({
		type : "POST",
		url : "/retrieve",
		

		success : function(result){
								$.each(result,function(i,data)
															{
																var jsondate=data.issueDate;
																var jsonid=data.id;

																for(var i=91;i<100;i++)
																{
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
																$('#'+insertid).replaceWith("<div class='issue_exist' style='width:100%;height:100%;' data-target='#update' id="+data.id+">update</div>");
															
															
															});
								
								}
		});

});
									//getting dynamic dates
function retrievedate(a)
{
	var date = new Date();
	var months=["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
	date.setDate(date.getDate() + a);
	return date.getDate()+'/'+months[date.getMonth()]+'/'+date.getFullYear();
}



						//enter issue
function validate(A)
{
	var whichid=$(A).children('div').attr('id');
	var check=$('#'+whichid).text();
	$(".btn-danger").click(function () {
        $(".btn-success").off('click');
      //form validation
		 $("[name='Begin_time']").val("");
		 $("[name='Begin_time']").attr("placeholder", "pick time");
		 $("[name='Begin_time']").css("border-color","");
		 $("[name='End_time']").val("");
		 $("[name='End_time']").attr("placeholder", "pick time");
		 $("[name='End_time']").css("border-color","");
		 $("[name='Title']").val("");
		 $("[name='Title']").attr("placeholder", "title");
		 $("[name='Title']").css("border-color","");
		 $("[name='Description']").val("");
		 $("[name='Description']").attr("placeholder", "give precise description");
		 $("[name='Description']").css("border-color","");
		
		//form validation ends
    });
	if(check==="schedule")
	{
	$("#myModal").modal({backdrop:true});
	
	
	
	var id=$(A).children('div').attr('id');
	var a=id;
	var productNo=$(A).attr('class');
	var idappend=productNo.substring(8,9);
	
		if(productNo=="Product A")
		{
			var dateid=(a-10);
		
		}else if(productNo=="Product B")
			{
				var dateid=(a-20);
			}
		else if(productNo=="Product C")
			{
				var dateid=(a-30);
			}
		else if(productNo=="Product D")
			{
				var dateid=(a-40);
			}
		var day=$('#'+ dateid).text();
	
	var issueDate =day;
	var appenddate=issueDate;
	for(var i=0;i<2;i++)
		{
		appenddate=appenddate.replace('/','');
		}
	var adminName=$('#username').text();
	var datastoreid=appenddate+idappend;
	$(".btn-danger").click(function () {
        $(".btn-success").off('click');
      //form validation
		 $("[name='Begin_time']").val("");
		 $("[name='Begin_time']").attr("placeholder", "pick time");
		 $("[name='Begin_time']").css("border-color","");
		 $("[name='End_time']").val("");
		 $("[name='End_time']").attr("placeholder", "pick time");
		 $("[name='End_time']").css("border-color","");
		 $("[name='Title']").val("");
		 $("[name='Title']").attr("placeholder", "title");
		 $("[name='Title']").css("border-color","");
		 $("[name='Description']").val("");
		 $("[name='Description']").attr("placeholder", "give precise description");
		 $("[name='Description']").css("border-color","");
		
		//form validation ends
    });
	
	$(".btn-success").click(function(){
		
		
		// variable declare
		var sendemail = $("input[type=checkbox]:checked").val();
		
		var begin_Time=$("[name='Begin_time']").val();
		
		var end_Time=$("[name='End_time']").val();
		
		var title = $("[name='Title']").val();
		var description = $("[name='Description']").val();
		var issueType = $("[name='issue']:checked").val();
		if(!isNaN(begin_Time))
		 {
		 $("[name='Begin_time']").css("border-color","red");
		 $("[name='Begin_time']").val("");
		 $("[name='Begin_time']").attr("placeholder", "Enter Valid time");
		 $("[name='Begin_time']").focus();
		 $(".btn-danger").click(function () {
		        $(".btn-success").off('click');
		    });
		 return false;
		 }
		if(!isNaN(end_Time))
		 {
		 $("[name='End_time']").css("border-color","red");
		 $("[name='End_time']").val("");
		 $("[name='End_time']").attr("placeholder", "Enter Valid time");
		 $("[name='End_time']").focus();
		 $(".btn-danger").click(function () {
		        $(".btn-success").off('click');
		    });
		 return false;
		 }
		if(!isNaN(title))
		 {
		 $("[name='Title']").css("border-color","red");
		 $("[name='Title']").val("");
		 $("[name='Title']").attr("placeholder", "Enter Valid title");
		 $("[name='Title']").focus();
		 $(".btn-danger").click(function () {
		        $(".btn-success").off('click');
		    });
		 return false;
		 }
		if(!isNaN(description))
		 {
		 $("[name='Description']").css("border-color","red");
		 $("[name='Description']").val("");
		 $("[name='Description']").attr("placeholder", "Enter Valid description");
		 
		 $("[name='Description']").focus();
		 $(".btn-danger").click(function () {
		        $(".btn-success").off('click');
		    });
		 return false;
		 }
		
		
		
		 
		
		 
		$.ajax({
			type : "POST",
			url : "/store",
			data : {ProductNo:productNo,Id:datastoreid,IssueDate:issueDate,Begin_Time:begin_Time,End_Time:end_Time,Title:title,Description:description,IssueType:issueType,AdminName:adminName,emailnotification:sendemail},

			success : function(result){
				
				alert(result);
			}
			});
		
		
		});
	}
	else{
		/*alert(whichid);*/
		var urlstring="/model_issue/"+whichid;
	/*	alert(urlstring);*/
		
		$.ajax({
			type : "POST",
			url : urlstring ,
			

			success : function(result){
								$('#dynamic_footer').children().remove();
								$('#new_update').children().remove();
								$('#new_update').append('<tr><th>Date</th><th style="padding-left:10px;">Begin time</th><th style="padding-left:10px;">End time</th><th style="padding-left:10px;">Title</th></tr>');
									$.each(result,function(i,data)
																{
										/*alert(((data.key.id)+1));*/
										$('#new_update').append('<tr id='+((data.key.id)+1)+'><td>'+data.issueDate+'</td><td style="padding-left:10px;">'+data.begin_Time+'</td><td style="padding-left:10px;">'+data.end_Time+'</td><td style="padding-left:10px;">'+data.title+'</td><td style="padding-left:10px;border-collapse:collapse;"><button type="button" id='+data.key.id+' onclick="dodelete(this);">delete</button></td></tr>');
												if(i==0)
													{
										$('#dynamic_footer').prepend('<button type="submit" class="btn btn-primary " value='+data.id+'  data-dismiss="modal" id='+data.issueDate+' onclick="doupdate(this);">Add issue</button>' );
										$('#dynamic_footer').append('<button type="button" class="btn btn-danger" data-dismiss="modal" onclick="doreload();">cancel</button>');
													}
										$("#update").modal({backdrop:true});					
																});
									
									}
			});
		
		}

}

								//delete an issue 
function dodelete(B){
	var key=$(B).attr('id');
	
	
	var n=(Number(key)+1);
	/*alert(n);*/
	var urlname="/delete/"+key;
	$.ajax({
		type : "POST",
		url : urlname,
		success:function(result){
									$('#'+n).remove();
									alert(result);
									
									
								}
	
		
	});
	
	
	
}

									//update an issue 
function doupdate(E){
	$("#myModal").modal({backdrop:true});
	var key1=$(E).attr('value');
	var issueDate=$(E).attr('id');
	var produtname=$('#'+key1).parent('td').attr('class');
	var adminName=$('#username').text();
	/*alert(key1);
	alert(produtname);*/
$(".btn-success").click(function(){
		
		
		// variable declare
		var sendemail = $("input[type=checkbox]:checked").val();
		
		var begin_Time=$("[name='Begin_time']").val();
		
		var end_Time=$("[name='End_time']").val();
		
		var title = $("[name='Title']").val();
		var description = $("[name='Description']").val();
		var issueType = $("[name='issue']:checked").val();
		if(!isNaN(begin_Time))
		 {
		 $("[name='Begin_time']").css("border-color","red");
		 $("[name='Begin_time']").val("");
		 $("[name='Begin_time']").attr("placeholder", "Enter Valid time");
		 $("[name='Begin_time']").focus();
		 $(".btn-danger").click(function () {
		        $(".btn-success").off('click');
		    });
		 return false;
		 }
		if(!isNaN(end_Time))
		 {
		 $("[name='End_time']").css("border-color","red");
		 $("[name='End_time']").val("");
		 $("[name='End_time']").attr("placeholder", "Enter Valid time");
		 $("[name='End_time']").focus();
		 $(".btn-danger").click(function () {
		        $(".btn-success").off('click');
		    });
		 return false;
		 }
		if(!isNaN(title))
		 {
		 $("[name='Title']").css("border-color","red");
		 $("[name='Title']").val("");
		 $("[name='Title']").attr("placeholder", "Enter Valid title");
		 $("[name='Title']").focus();
		 $(".btn-danger").click(function () {
		        $(".btn-success").off('click');
		    });
		 return false;
		 }
		if(!isNaN(description))
		 {
		 $("[name='Description']").css("border-color","red");
		 $("[name='Description']").val("");
		 $("[name='Description']").attr("placeholder", "Enter Valid description");
		 
		 $("[name='Description']").focus();
		 $(".btn-danger").click(function () {
		        $(".btn-success").off('click');
		    });
		 return false;
		 }
		 
		$.ajax({
			type : "POST",
			url : "/store",
			data : {ProductNo:produtname,Id:key1,IssueDate:issueDate,Begin_Time:begin_Time,End_Time:end_Time,Title:title,Description:description,IssueType:issueType,AdminName:adminName,emailnotification:sendemail},

			success : function(result){
				alert(result);
			}
			});
		
		
		});
}
					

function doreload(){
	location.reload();
		
}



