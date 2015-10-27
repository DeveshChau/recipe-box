class RecipesController < ApplicationController

before_action :find_recipe, only[:edit, :update, :show, :destory]

def index
	@recipe = Recipe.all.order("created_at,DESC")
end

def new
	@recipe = Recipe.new
end

def create
	@recipe = Recipe.new(recipe_params)
	if @recipe.save
		redirect_to @recipe, notice: "Recipe Successfully Created !"
	else
		render 'new'
	end
end

def show
	
end

def edit
	
end

def update
	
end

def destory
	
end

private
	
	def find_recipe
		@recipe = Recipe.find(params[:id])
	end

	def recipe_params
		params.require(:recipe).permit(:title, :desciption)
	end

end
