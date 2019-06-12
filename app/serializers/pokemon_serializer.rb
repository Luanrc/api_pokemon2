class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name,


  belongs_to :user
  belongs_to :pokemon_type
  belongs_to :gender


end
