class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
    	t.string 	:login
    	t.string 	:email
		t.integer 	:user_id
    end
  end
end
