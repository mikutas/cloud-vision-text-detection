Rails.application.routes.draw do
  root 'static_pages#input'
  post '/result', to: 'static_pages#result'
  get  '/result' => redirect('/')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
