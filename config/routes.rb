Rails.application.routes.draw do
  get 'db/user_index'
  get 'db/link_index'
  get "link/index" => "link#index"
  post "link/sign_in" => "link#sign_in"
  get "link/sign_up" => "link#sign_up"
  post "link/user_new" => "link#user_new"
  get "link/logout" => "link#logout"
  post "link/link_new" => "link#link_new"
  get "link/:id/edit" => "link#edit"
  post "link/:id/update" => "link#update"
  post "link/:id/destroy" => "link#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
