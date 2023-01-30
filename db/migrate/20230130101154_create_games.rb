class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      t.integer :player_min
      t.integer :player_max
      t.integer :avg_time
      t.string :editor

      t.timestamps
    end
  end
end
