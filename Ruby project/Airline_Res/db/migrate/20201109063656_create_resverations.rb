class CreateResverations < ActiveRecord::Migration[5.0]
  def change
    create_table :resverations do |t|
      t.string :First_Name
      t.string :Last_Name
      t.date :Date_Of_Birth
      t.string :Seat_Request

      t.timestamps
    end
  end
end
