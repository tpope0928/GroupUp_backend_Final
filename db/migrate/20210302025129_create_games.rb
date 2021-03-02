class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :genre
      t.integer :skill_level
      t.string :game_name
      t.belongs_to :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
