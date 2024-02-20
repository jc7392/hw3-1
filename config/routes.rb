Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "wireframes", :controller => "wireframes", :action => "index"
  get "entries", :controller => "entries", :action => "index"
  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
  # get '/wireframes/Charleston', to: 'wireframes#Charleston'

end
