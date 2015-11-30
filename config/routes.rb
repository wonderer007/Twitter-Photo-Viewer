Rails.application.routes.draw do

  root "welcome#index"
  resource :welcome, :only => [:index]

  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout

end