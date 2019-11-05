class DropColFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :atts_table_id
  end
end
