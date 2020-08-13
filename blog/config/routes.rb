Rails.application.routes.draw do
  get 'welcome/index'
  # let root to be "controller welcome" with "method index"
  root 'welcome#index'
end
