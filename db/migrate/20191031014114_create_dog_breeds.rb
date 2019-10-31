class CreateDogBreeds < ActiveRecord::Migration[5.0]
  def change
    create_table :dog_breeds do |t|
      t.string :origins
      t.string :life_span
      t.string :group
      t.boolean :apartment_friendly
      t.boolean :hypoallergenic
      t.boolean :pet_friendly
      t.boolean :noise

      t.timestamps
    end
  end
end
