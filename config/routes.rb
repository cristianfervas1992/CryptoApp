Rails.application.routes.draw do
  devise_for :users
  get 'exchanges'=>'exchanges#index'
  get '/exchanges/:id', to: 'exchanges#show', as: 'exchange'
  get 'currencies'=>'currencies#index'
  get '/currencies/:id', to: 'currencies#show', as: 'currency'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'currencies#index'
  #root 'exchanges#index'
  #match ':coinName' => "currencies#index" , via: [:get, :post]
  #match ':exchangeName' => "exchanges#index" , via: [:get, :post]

end
