class Item < ActiveRecord::Base
	has_and_belongs_to_many :carts
	has_many 	:positions
	has_many 	:carts, through: :positions, source: :container,
						source_type: "Cart"
	has_many 	:orders, through: :positions, source: :container,
						source_type: "Order"
	has_many 	:images, as: :imageable

	after_create :increment_category_counter
	after_destroy :decrement_category_counter


	private

	def increment_category_counter
		category.inc!(:items_count)
	end

	def decrement_category_counter
		category.inc!(:items_count, -1)
	end
	
end
