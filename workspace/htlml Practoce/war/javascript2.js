$(document).ready(function(){

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
	
	$(".btn-success").click(function(){
		
		
		var Begin_hrs = $("[name='Begin_hrs']").val();
		var Begin_mins = $("[name='Begin_mins']").val();
		var End_hrs = $("[name='End_hrs']").val();
		var End_mins = $("[name='End_mins']").val();
		// variable declare
		var begin_Time=Begin_hrs+':'+Begin_mins;
		var end_Time=End_hrs+':'+End_mins;
		var title = $("[name='Title']").val();
		var description = $("[name='Description']").val();
		var issueType = $("[name='issue']:checked" ).val();
		 if (Begin_hrs == null || Begin_hrs == "" || Begin_mins == null || Begin_mins == "" || End_hrs == null || End_hrs == "" || End_mins == null || End_mins == "" || title == null || title == "" || description == null || description == ""   ) {
		        alert("Field must be filled out");
		        return false;
		    }
		 if(Begin_hrs>23 || Begin_mins>59 || End_hrs>23 || End_mins>59  )
			 {
			 alert("enter proper Time");
			 return false;
			 }
		 
		$.ajax({
			type : "POST",
			url : "/store",
			data : {ProductNo:productNo,Id:id,IssueDate:issueDate,Begin_Time:begin_Time,End_Time:end_Time,Title:title,Description:description,IssueType:issueType},

			success : function(result){
				alert(result);
			}
			});
		
		
		});

}



