Rails.application.routes.draw do
  resources :applicant_experiences
  resources :applicant_references
  get 'applicants/index'
  resources :applicant_addresses
  resources :applicant_personal_details
  root 'welcome#index'
  get 'welcome/index'

  devise_for :applicants

end
