Rails.application.routes.draw do
  root 'tags#index'
  get 'tags' => 'tags#index'
  get '/tags/:id' => 'tags#show', as: :tag
  get '/destinations/:id' => 'destinations#show', as: :destination
  get '/destinations/:id/edit' => 'destinations#edit', as: :edit_destination 
  patch '/destinations/:id' => 'destinations#update'
  # By giving the route the name "tag", Rails 
  #automatically creates a helper method named 
  #tag_path. We use tag_path(t) here to generate 
  #the URL to a specific tag's path, for example 
  #/tag/1.

end
