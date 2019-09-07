class AddColumnsToComments < ActiveRecord::Migration
  def change
    change_table :comments, bulk: true do |t|
      t.integer :user_id
      t.integer :post_id
      t.text :content
    end
  end
end
