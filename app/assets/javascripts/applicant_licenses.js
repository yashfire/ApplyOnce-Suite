//#applicant_license_applicant_license_code_id
//#applicant_license_applicant_license_status_id
$(document).ready(function(){
	(function() {
		jQuery(function(){
			$('#applicant_license_applicant_license_code_id').on('change',function(){
			    if( $(this).val()==="9"){
			    $("#status").hide()
			    }
			    else{
			    $("#status").show()
			    }
			});
		});
	}).call(this);
});