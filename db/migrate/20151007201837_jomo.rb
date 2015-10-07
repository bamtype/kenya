class Jomo < ActiveRecord::Migration
  def change
  		create_table :users do |t|
		t.string :fname
		t.string :lname
		t.string :city
		t.string :state
		t.string :alias
		t.string :post
	 end
  
		create_table :posts do |table|
        table.string :subject
        table.string :body
        table.integer :user_id
    end
        create_table :profiles do |table|
        table.string :info
        table.integer :user_id
    end
 end
end
