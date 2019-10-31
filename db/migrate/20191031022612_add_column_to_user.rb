class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :atts_table_id, :integer
  end
end
