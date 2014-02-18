# This file and others has hard tabs. Switch to 2 spaces instead of tabs.
class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
	end
end
