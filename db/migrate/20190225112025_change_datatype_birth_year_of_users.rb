class ChangeDatatypeBirthYearOfUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :birth_year, :string
  end
end
