class AddColsToAttsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :atts_tables, :cold_weather, :boolean 
    add_column :atts_tables, :size, :string 
  end
end
