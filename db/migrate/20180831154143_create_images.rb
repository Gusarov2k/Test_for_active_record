class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
    	t.integer 	:imageable_id
    	t.string 		:imageable_type
      t.timestamps null: false
    end
    # add polymorf index
    add_index :images, [:imageable_id, :imageable_type]
  end
end
