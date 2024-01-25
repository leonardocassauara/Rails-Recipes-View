class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
    end

    def new
        @recipe = Recipe.new
    end

    def create
        # params recebe os parametros do formulário (new.html.erb)
        # puts params

        @recipe = Recipe.new(recipe_params)
        @recipe.save

        redirect_to "/"
    end

    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.destroy

        redirect_to "/"
    end

    private 
    
    def recipe_params
        params.require(:recipe).permit(:name, :ingredients, :stars, :time_to_make, :id)
    end

end