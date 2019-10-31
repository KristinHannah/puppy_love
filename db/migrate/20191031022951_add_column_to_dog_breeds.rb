class AddColumnToDogBreeds < ActiveRecord::Migration[5.0]
  def change
    add_column :dog_breeds, :atts_table_id, :integer
  end
end
