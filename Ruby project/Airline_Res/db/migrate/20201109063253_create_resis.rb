class CreateResis < ActiveRecord::Migration[5.0]
  def change
    create_table :resis do |t|
      t.string :Fisrt_Name
      t.string :Last_Name
      t.string :Email
      t.string :Password
      t.string :Confirm_Password

      t.timestamps
    end
  end
end
