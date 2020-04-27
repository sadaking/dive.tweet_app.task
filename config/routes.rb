Rails.application.routes.draw do

  root 'connects#index'
  resources :connects do
    collection do
      post :confirm
    end
  end
end
