class CreateJaunts < ActiveRecord::Migration[6.0]
  def change
    create_table :jaunts do |t|
      t.integer :user_id
      t.integer :gallery_id
    end
  end
end
