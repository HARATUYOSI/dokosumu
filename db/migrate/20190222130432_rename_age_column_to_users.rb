class RenameAgeColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :birth_year, string
  end
end
