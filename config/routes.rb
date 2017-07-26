Rails.application.routes.draw do
  
# for homepage
get("/", { :controller => "movies", :action => "index" })

# to access Directors
# CREATE
get("/directors/new_form", { :controller => "directors", :action => "new_form" })
get("/create_director", { :controller => "director", :action => "create_row" })

# READ
get("/directors", { :controller => "directors", :action => "index" })
get("/directors/:id", { :controller => "directors", :action => "show" })

# UPDATE
get("/directors/:id/edit_form", { :controller => "directors", :action => "edit_form" })
get("/update_director/:id", { :controller => "directors", :action => "update_row" })

# DELETE
get("/delete_director/:id", { :controller => "directors", :action => "destroy" })


# to access Movies
# CREATE
get("/movies/new_form", { :controller => "movies", :action => "new_form" })
get("/create_movie", { :controller => "movies", :action => "create_row" })

# READ
get("/movies", { :controller => "movies", :action => "index" })
get("/movies/:id", { :controller => "movies", :action => "show" })

# UPDATE
get("/movies/:id/edit_form", { :controller => "movies", :action => "edit_form" })
get("/update_movie/:id", { :controller => "movies", :action => "update_row" })

# DELETE
get("/delete_movie/:id", { :controller => "movies", :action => "destroy" })


# to access Actors
# CREATE
get('/actors/new_form', { :controller => 'actors', :action => 'new_form' })
get('/create_actor', { :controller => 'actors', :action => 'create_row' })

# READ
get('/actors', { :controller => 'actors', :action => 'index' })
get('/actors/:id', { :controller => 'actors', :action => 'show' })

# UPDATE
get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form' })
get('/update_actor/:id', { :controller => 'actors', :action => 'update_row' })

# DELETE
get('/delete_actor/:id', { :controller => 'actors', :action => 'destroy' })  
  
  
  
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
