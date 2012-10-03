Rails.application.routes.draw do

  mount IsolatedEngine::Engine => "/isolated_engine"
end
