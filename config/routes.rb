Rails.application.routes.draw do
  get 'header/index'
  get 'count/index'
  get 'count', to: 'count#index'
  get 'reset', to: 'count#reset'
  get 'header', to: 'header#index'
  get 'sleep/:sleep', to: 'sleep#index'
  get 'version/index'
  get 'version', to: 'version#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
