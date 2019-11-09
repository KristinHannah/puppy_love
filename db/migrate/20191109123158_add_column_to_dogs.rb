class AddColumnToDogs < ActiveRecord::Migration[5.0]
  def change
    add_column :dog_breeds, :image, :string
  end
end
