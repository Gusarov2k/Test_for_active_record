class ItemsController < ApplicationController
	def index

	end

	def show

	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.create(item_params)
		if @item.errors.empty?
			redirect_to @item
		else
			render "new"
		end
	end

	def edit

	end

	def update

	end

	def destroy

	end

	private

	def item_params
		params.require(:item).permit(:name, :description, :weight, :price)
	end
end
