PostitTemplate::Application.routes.draw do
  root to: 'posts#index'
  
  resources :posts, except: :destroy do
    resources :comments, only: [:create, :show]
  end

  resources :categories, except: [:edit, :update, :destroy]
end
