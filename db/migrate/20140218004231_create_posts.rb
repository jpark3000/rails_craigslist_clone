class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :title
    	t.string :description
    	t.integer :price
    	t.string :location
    	t.references :category
    	t.references :user
    end
  end
end
