class AddUsedColumnToItems < ActiveRecord::Migration
  def change
  	add_column :items, :used, :boolean, default: false
  end
end
