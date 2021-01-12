Rails.application.routes.draw do
  resource :session, only: %i[create new]
  resource :users, only: %i[create new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
