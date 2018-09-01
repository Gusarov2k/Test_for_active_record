class CreateDisplays < ActiveRecord::Migration
  def change
    create_table :displays do |t|
    	t.string :heir_type
    end
  end
end
