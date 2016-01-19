$(document).ready(function(){
	$('.clockpicker').clockpicker();
	var d = new Date();
	$(".child_2_1").html(d.toDateString());
	var months=["January","February","March","April","May","June","July","August","September","October","November","December"];
	$(".month").html(months[d.getMonth()]);
	$("#today").html(d.getDate());
	$.ajax({
		type : "POST",
		url : "/retrieve",
		

		success : function(result){
								$.each(result,function(i,data)
															{
															if(data.id!=null)
																{
																	var id=data.id;
																	$('#'+id).removeClass('cement').addClass('issue_exist');
																}
															});
								
								}
		});

});
function validate(A)
{
	$("#myModal").modal({backdrop:true});
	$(".btn-danger").click(function () {
        $(".btn-success").off('click');
    });
	
	var d = new Date();
	var months=["January","February","March","April","May","June","July","August","September","October","November","December"];
	var year=d.getFullYear();
	
	var id=$(A).children('div').attr('id');
	for(var a=101;a<=138;a++)
	{
		if(id==a)
		{
			if(id>100 && id<109)
				{
					var dateid=(a-10);
					
				}else if(id>110 && id<120)
						{
							var dateid=(a-20);
						}
				else if(id>120 && id<130)
						{
							var dateid=(a-30);
						}
				else if(id>130 && id<140)
						{
							var dateid=(a-40);
						}
			
			
			var day=$('#'+ dateid).text();
		}
	}
	
	var productNo=$(A).attr('class');
	var issueDate =day+'/'+months[d.getMonth()]+'/'+year;
	var adminName=$('#username').text();
	
	$(".btn-success").click(function(){
		
		
		// variable declare
		var sendemail = $("input[type=checkbox]:checked").val();
		
		var begin_Time=$("[name='Begin_time']").val();
		
		var end_Time=$("[name='End_time']").val();
		
		var title = $("[name='Title']").val();
		var description = $("[name='Description']").val();
		var issueType = $("[name='issue']:checked").val();
		
		 if (begin_Time == null || begin_Time == "" || end_Time == null || end_Time == ""  || title == null || title == "" || description == null || description == ""   ) {
		        alert("Field must be filled out");
		        return false;
		    }
		
		 
		$.ajax({
			type : "POST",
			url : "/store",
			data : {ProductNo:productNo,Id:id,IssueDate:issueDate,Begin_Time:begin_Time,End_Time:end_Time,Title:title,Description:description,IssueType:issueType,AdminName:adminName,emailnotification:sendemail},

			success : function(result){
				alert(result);
			}
			});
		
		
		});

}



