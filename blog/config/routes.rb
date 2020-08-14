Rails.application.routes.draw do
  # mapping url /joyce to the controller "welcome"'s method "index"
  get 'joyce', to: 'welcome#index'
  get 'welcome/index'

  #standard REST resource
  resources :articles

  # let root to be "controller welcome" with "method index"
  root 'welcome#index'
end
