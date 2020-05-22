Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   get 'tasks/:id', to: 'tasks#show'
#   post 'tasks', to: 'tasks#create'
#   put 'tasks/:id', to: 'tasks#update'
#   delete 'tasks/:id', to: 'tasks#destroy'
  
#     # index: show の補助ページ
#   get 'tasks', to: 'tasks#index'

#   # new: 新規作成用のフォームページ
#   get 'tasks/new', to: 'tasks#new'

#   # edit: 更新用のフォームページ
#   get 'tasks/:id/edit', to: 'tasks#edit'

root to: 'tasks#index'

get 'signup', to: 'users#new'
resources :tasks
resources :users, only: [:index, :show, :new, :create]
end
