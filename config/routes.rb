Rails.application.routes.draw do
  resource :products do #index,id付きパス不要(resource)
    collection { post :import }
  end
  
  resource :places do
    collection { post :import }
  end    
end
