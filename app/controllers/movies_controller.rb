class MoviesController < ApplicationController
    def new_form
        
      render("movies/new_form.html.erb")
    end
    
    
    def create_row
      
      @movie = Movie.new
      @movie.title= params["movie_title"]
      @movie.year = params["movie_year"]
      @movie.duration = params["movie_duration"]
      @movie.description = params["movie_description"]
      @movie.image_url = params["movie_image_url"]

      @movie.save
      
      redirect_to "/movies/#{@movie.id}"
    end
    
    
    def index
        
      @our_movies = Movie.order(:created_at => :desc)
            
      render("movies/index.html.erb")
    end
    
    
    def show
        
      @movie = Movie.find(params["id"])
        
      render("movies/show.html.erb")
    end
    
   
    def edit_form
      
      @movie = Movie.find(params["id"])
      
      render("movies/edit_form.html.erb")
    end
    
    def update_row
      
      @movie.title = params["title"]
      @movie.year = params["year"]
      @movie.duration = params["duration"]
      @movie.description = params["description"]
      @movie.image_url = params["image_url"]

      @movie.save

      redirect_to "/movies/#{@movie.id}"
    end
    
    def destroy
      
      @movie = Movie.find(params["id"])

      @movie.destroy
      
      redirect_to "/movies"
    end
    
    
end
