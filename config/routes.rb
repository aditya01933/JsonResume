Rails.application.routes.draw do
	get :index => 'resumes#show'
  root 'resumes#index'
end
