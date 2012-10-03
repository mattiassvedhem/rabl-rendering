IsolatedEngine::Engine.routes.draw do
  root to: 'nested_items#index'

  resources :nested_items

end
