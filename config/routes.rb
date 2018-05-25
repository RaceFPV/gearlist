Rails.application.routes.draw do
  default_url_options :host => ENV["GEARLISTURL"]
  devise_for :users
  get 'home/index'
  root 'home#index'
  match 'dashboard', to: 'dashboard#index', via: 'get', as: 'dashboard'
  match 'items', to: 'item#index', via: 'get', as: 'items'
  match 'items/new', to: 'item#new', via: 'get', as: 'new_item'
  match 'items/api', to: 'item#api', via: 'get', as: 'item_api'
  match 'items/create', to: 'item#create', via: 'post', as: 'create_item'
  match 'items/:id', to: 'item#details', via: 'get', as: 'item_details'
  match 'items/:id/edit', to: 'item#edit', via: 'get', as: 'edit_item'
  match 'items/:id/update', to: 'item#update', via: 'patch', as: 'update_item'
  match 'items/:id/clone', to: 'item#clone', via: 'get', as: 'clone_item'
  match 'items/:id/delete', to: 'item#delete', via: 'delete', as: 'delete_item'
  match 'reports', to: 'reports#index', via: 'get', as: 'reports'
  match 'reports/assigned', to: 'reports#assigned', via: 'get', as: 'reports_assigned'
  match 'divisions', to: 'division#index', via: 'get', as: 'divisions'
  match 'divisions/new', to: 'division#new', via: 'get', as: 'new_division'
  match 'divisions/create', to: 'division#create', via: 'post', as: 'create_division'
  match 'divisions/:id/delete', to: 'division#delete', via: 'delete', as: 'delete_division'
end
