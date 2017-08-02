Rails.application.routes.draw do
  
  resources :applicant_person_qualification_field_of_studies
  root 'welcome#index'
  get 'applicants/index'
  get 'welcome/index'
  devise_for :applicants
  resources :applicant_emergency_contacts
  resources :applicant_disability_types
  resources :applicant_licenses
  resources :applicant_foi_programs
  resources :applicant_addresses
  resources :applicant_personal_details
  resources :applicant_field_of_studies
  resources :applicant_experiences
  resources :applicant_references
  
end
