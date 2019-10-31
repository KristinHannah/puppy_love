class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.integer :user_id
      t.integer :dog_id
      t.string :comment_field

      t.timestamps
    end
  end
end
