Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/timer'=>'timer#index'
  post '/update-log'=>'timer#update_log'
end
