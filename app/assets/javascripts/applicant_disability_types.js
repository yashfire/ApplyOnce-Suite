//#applicant_disability_type_applicant_disability_id
//#applicant_disability_type_Disability_Type
$(document).ready(function(){
	(function() {
		jQuery(function(){
			$('#applicant_disability_type_applicant_disability_id').on('change',function(){
			    if( $(this).val()!=="2"){
			    $("#type").hide()
			    }
			    else{
			    $("#type").show()
			    }
			});
		});
	}).call(this);
});
//if( $(this).val().equals("2")){
