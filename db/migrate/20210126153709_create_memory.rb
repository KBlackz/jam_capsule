class CreateMemory < ActiveRecord::Migration[5.2]
  def change
    create_table :memories do |t|
      t.string :name
      t.string :date_and_time 
      t.string :description 
      t.integer :song_id
      t.integer :user_id
    end

  end
end
