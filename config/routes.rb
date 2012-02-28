Spree::Core::Engine.routes.prepend do
  match '/contato' => 'inquiries#index', :as => :contact

  resources :inquiries

  namespace :admin do
    resources :inquiries
  end

end
