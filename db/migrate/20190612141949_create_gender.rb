class CreateGender < ActiveRecord::Migration[5.2]
  def change
    create_table :genders do |t|
      t.string :name
    end
  end
end
