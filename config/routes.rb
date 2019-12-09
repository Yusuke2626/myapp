Rails.application.routes.draw do
    devise_for :users,controllers: {
        :registrations => 'users/registrations',
        sessions: 'users/sessions'
      }
      devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'tops#index'

    resources :prefectures,only:[:index,:show] do
      collection do
        get 'search'

      end
    end
    # get '/prefectures' => 'prefectures#index'


    resources :hokkaidos, only:[:index]
    resources :touhokus, only:[:index]
    # resources :kantous, only:[:index]
    # resources :chubus, only:[:index]
    # resources :kansais, only:[:index]
    # resources :tyugokus, only:[:index]
    # resources :shikokus, only:[:index]
    # resources :kyusyu_okinawas, only:[:index]

    resources:tops ,only:[:index]
    resources:houses do
      post 'add' => 'favorites#create'
      delete '/add' =>'favorites#destroy'
      resources :qaforms,only:[:create]
      resources :mails,only:[:create,:new,:show]
      collection do
        get 'search'
      end
      namespace :api, format: 'json' do
        resources :houses, only:[:index,:show]

      end
      resources :charges
    end


    # ,only:[:index,:create,:new,:edit,:update,:destroy]

    # get 'users/:id'=>'users#show'
    resources :users ,only:[:show] do
      resources :favorites, only:[:index]
      resources :mails ,only:[:index,:search]
    end

    resources :searches ,only:[:index]do
      collection do
        get 'search'
      end
    end

    resources :addresses ,only:[:index]
    resources :mails ,only:[:search]



end
