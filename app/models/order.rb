class Order < ActiveRecord::Base
	has_many :positions, as: :container
	has_many :items, through: :positions
end
