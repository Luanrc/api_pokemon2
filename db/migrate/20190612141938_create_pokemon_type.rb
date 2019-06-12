class CreatePokemonType < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemon_types do |t|
      t.string :name
    end
  end
end
