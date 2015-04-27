class CreateSupperclubs < ActiveRecord::Migration
  def change
    create_table :supperclubs do |t|
      t.string :name
      t.text :about
      t.string :location

      t.timestamps null: false
    end
  end
end
