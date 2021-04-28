Rails.application.routes.draw do
  root to: 'receiveds#index'
  
  resource :products do #index,id付きパス不要(resource)
    collection { post :import }
  end
  
  resource :places do
    collection { post :import }
  end
  
  resource :sellers do
    collection { post :import }
  end
  
  resources :receiveds do
   resources :orders, only: [:new]
  end
  resources :orders, only:[:create, :show, :edit, :update, :destroy]
end
