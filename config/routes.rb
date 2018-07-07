Rails.application.routes.draw do
  # get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "welcome#index" # halaman pertama kali localhost:3000 diakses
  
  resources :schedule_students
  resources :schedules
  resources :teachers
  resources :lectures

  resources :students do 
    member do
      put '/restore', to: 'students#restore'
    end
  end
  get '/deleted_students', to: 'students#deleted_students'
end
