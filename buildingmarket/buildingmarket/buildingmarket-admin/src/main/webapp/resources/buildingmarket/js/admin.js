// For User Registration Form
$().ready(function() {
	$("#myform").validate({
		rules : {

			blogsTitle : "required",
			startDate : "required",
			endDate : "required",
			description : "required",
			
		},
		
		messages : {
			blogsTitle : "Blogs title can not be blank",
			startDate : "Start date can not be blank",
			endDate : "End date can not be blank",
			description : "Description can not be blank",

		}
	});
});


$().ready(function() {
	$("#promyform").validate({
		rules : {

			productName : "required",
			startDate : "required",
			endDate : "required",
			description : "required",
			
		},
		
		messages : {
			productName : "Product name can not be blank",
			startDate : "Start date can not be blank",
			endDate : "End date can not be blank",
			description : "Description can not be blank",

		}
	});
});