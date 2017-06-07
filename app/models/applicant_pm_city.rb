class ApplicantPmCity < ApplicationRecord
  belongs_to :p_municipality

  def to_s
  	self.City_Name 
  end
  
end
