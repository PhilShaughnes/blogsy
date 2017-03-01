Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root  'users#index'

  get    '/users'            => 'users#index'
  get    '/users/:id/posts'  => 'posts#index'
  post   '/users'            => 'users#create'


  get    '/posts'            => 'posts#index'
  get    'posts/:id'         => 'posts#show'
  #delete '/posts/:id'        => 'posts#destroy'

  get    'post/:id/comments' => 'comments#show'

end
