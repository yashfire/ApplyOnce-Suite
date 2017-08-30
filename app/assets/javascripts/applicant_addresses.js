//coffeeScript
// jQuery -> 
//   	cities = $('#applicant_address_applicant_pm_city_id').html()
//   	$('#applicant_address_id').change() -> 
//   		municipality = $('#applicant_address_id :selected').text()
//   		options = $(cities).filter("optgroup[label='#{municipality}']").html()
//   		if options 
//   			$('#applicant_address_applicant_pm_city_id').html(options)
//   		else 
//   			$('#applicant_address_applicant_pm_city_id').empty()
//   		console.log(municipality)
///////////////////////////////////////////////////////////////////////////////
// (function() {
//   jQuery(function() {
//     var cities;
//     cities = $('#applicant_address_applicant_pm_city_id').html();
//     return $('#applicant_address_id').change(function() {
//       var municipality, options;
//       municipality = $('#applicant_address_id :selected').text();
//       options = $(cities).filter("optgroup[label='" + municipality + "']").html();
//       if (options) {
//         $('#applicant_address_applicant_pm_city_id').html(options);
//       } else {
//         $('#applicant_address_applicant_pm_city_id').empty();
//       }
//       // return console.log(municipality);
//     });
//   });

// }).call(this);
