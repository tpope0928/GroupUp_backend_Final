class GameSerializer < ActiveModel::Serializer
  belongs_to :player
  attributes :id, :title, :genre, :skill_level, :game_name, :player_id
end
