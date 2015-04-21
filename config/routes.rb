Rails.application.routes.draw do
  # ROOT
  root 'main#home', as: 'home'

  devise_for :users
end
