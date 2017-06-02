class Cv < Prawn::Document 
	def initialize(details)
		super(top_margin: 70)
		@applicant_personal_details = details
		text "Name #{@applicant_personal_details}"
		# text = @applicant_personal_details
	end 

end