class DirectorsController < ApplicationController
    def new_form
        
        render("directors/new_form.html.erb")
    end
    
    
    def create_row
      
      @director = Director.new
      @director.name = params["director_name"]
      @director.bio = params["director_bio"]
      @director.dob = params["director_dob"]
      @director.image_url = params["director_url"]

      @director.save
      
      redirect_to "/directors/#{@director.id}"
    end
    
    
    def index
        
      @our_directors = Director.order(:created_at => :desc)
            
      render("directors/index.html.erb")
    end
    
    
    def show
        
      @director = Director.find(params["id"])
        
      render("directors/show.html.erb")
    end
    
   
    def edit_form
      
      @director = Director.find(params["id"])
      
      render("directors/edit_form.html.erb")
    end
    
    def update_row
      
      @director = Director.find(params["id"])

      @director.dob = params["the_dob"]
      @director.name = params["the_name"]
      @director.bio = params["the_bio"]
      @director.image_url = params["the_image_url"]

      @director.save

      redirect_to "/directors/#{@director.id}"
    end
    
    def destroy
      
      @director = Director.find(params["id"])
      
      render("directors/destroy_row.html.erb")
    end
    
    
end

