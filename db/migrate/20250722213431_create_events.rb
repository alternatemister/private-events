class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :location

      t.timestamps
    end
  end
end
