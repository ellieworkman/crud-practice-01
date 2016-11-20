class Typo < ActiveRecord::Migration[5.0]
  def change
    rename_column :countries, :colorsdescription, :colors 
    add_column :countries, :description, :string
  end
end
