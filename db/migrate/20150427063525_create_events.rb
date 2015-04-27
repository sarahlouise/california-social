class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :date
      t.string :time
      t.string :about
      t.references :supperclub, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
