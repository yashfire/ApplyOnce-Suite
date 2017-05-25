Rails.application.routes.draw do
  
  resources :applicant_foi_programs
  root 'welcome#index'
  get 'applicants/index'
  get 'welcome/index'
  resources :applicant_addresses
  resources :applicant_personal_details
  resources :applicant_field_of_studies
  resources :applicant_experiences
  resources :applicant_references
  devise_for :applicants

end
