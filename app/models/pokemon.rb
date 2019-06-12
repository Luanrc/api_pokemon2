class Pokemon < ApplicationRecord
  belongs_to :user
  belongs_to :pokemon_type
  belongs_to :gender

end
