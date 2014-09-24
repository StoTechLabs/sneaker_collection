class CreateTables < ActiveRecord::Migration
  def change
    create_table :brands do |t|
    	t.string :name
    end

    create_table :shoes do |t|
    	t.string :style
    	t.string :color
    	t.integer :brand_id
   	end
  end
end
