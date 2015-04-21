Rails.application.routes.draw do
  # ROOT
  root 'main#home', as: 'home'

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
