Rails.application.routes.draw do
  resources :fighters do
  	resources :skills
  end

  root "fighters#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
