class ActorsController < ApplicationController
    def new_form
        
        render("actors/new_form.html.erb")
    end
    
    
    def create_row
      
      @actor = Actor.new
      @actor.name = params["actor_name"]
      @actor.bio = params["actor_bio"]
      @actor.dob = params["actor_dob"]
      @actor.image_url = params["actor_url"]

      @actor.save
      
      redirect_to "/actors"
    end
    
    
    def index
        
      @our_actors = Actor.order(:created_at => :desc)
            
      render("actors/index.html.erb")
    end
    
    
    def show
        
      @actor = Actor.find(params["id"])
        
      render("actors/show.html.erb")
    end
    
   
    def edit_form
      
      @actor = Actor.find(params["id"])
      
      render("actors/edit_form.html.erb")
    end
    
    def update_row
      
      @actor = Actor.find(params["id"])

      @actor.dob = params["the_dob"]
      @actor.name = params["the_name"]
      @actor.bio = params["the_bio"]
      @actor.image_url = params["the_image_url"]

      @actor.save

      redirect_to "/actors/#{@actor.id}"
    end
    
    def destroy
      
      @actor = Actor.find(params["id"])

      @actor.destroy
      
      render("actors/destroy_row.html.erb")
    end
    
end

