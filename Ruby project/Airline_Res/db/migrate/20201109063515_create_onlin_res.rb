class CreateOnlinRes < ActiveRecord::Migration[5.0]
  def change
    create_table :onlin_res do |t|
      t.string :Journey_Type
      t.string :Departure_City
      t.string :Arrival_City
      t.date :Departure_Date

      t.timestamps
    end
  end
end
