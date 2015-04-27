class AddItemsToSupperclub < ActiveRecord::Migration
  def change
    add_column :supperclubs, :website, :string
    add_column :supperclubs, :email, :string
    add_column :supperclubs, :exclusivity, :integer
  end
end
