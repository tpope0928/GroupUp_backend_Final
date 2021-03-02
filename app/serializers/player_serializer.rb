class PlayerSerializer < ActiveModel::Serializer
  has_many :games
  attributes :id, :name, :city, :state
end
