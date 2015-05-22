class CreateFriendlyLinks < ActiveRecord::Migration
  def change
    create_table :friendly_links do |t|
    	t.string	:new_link
    	t.integer	:times_visited

      	t.timestamps null: false
    end
  end
end
