class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
    	t.integer :contact_id
    	t.integer :phone_number

     	t.timestamps null: false
    end
  end
end
