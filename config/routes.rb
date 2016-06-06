::Refinery::Application.routes.draw do
  resources :event_venues, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :event_venues, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
