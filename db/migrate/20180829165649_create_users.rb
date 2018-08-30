class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	#table fro
      	t.string 	:login
    	t.string 	:email
    end
  end
end
