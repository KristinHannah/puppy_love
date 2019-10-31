class CreateAttsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :atts_tables do |t|
          t.integer :dog_breed_id
          t.integer :user_id
          t.boolean :apartment_friendly
          t.boolean :hypoallergenic
          t.boolean :pet_friendly
          t.boolean :noise
    
          t.timestamps
    end
  end
end


