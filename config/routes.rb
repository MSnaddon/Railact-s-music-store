Rails.application.routes.draw do
  resources :artists do
    resources :albums do
      resources :stocks
    end
  end
end
