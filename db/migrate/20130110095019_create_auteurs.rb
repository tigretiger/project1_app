class CreateAuteurs < ActiveRecord::Migration
  def change
    create_table :auteurs do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
