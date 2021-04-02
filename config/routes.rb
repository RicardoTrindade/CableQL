Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post :graphql, to: "graphql#run"

  mount ActionCable.server, at: '/cable'
end
