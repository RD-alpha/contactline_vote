Rails.application.routes.draw do
  get 'main/index'
  get 'main/results'
  get 'main/wait'
  get 'questions/newq(/:id)', to: 'questions#newq'
  put 'admin', to: 'admin#update'
  resources :responses, :questions, :admin
  root 'main#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
