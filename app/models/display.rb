class Display < ActiveRecord::Base
	acts_as_heir_of :item
end
