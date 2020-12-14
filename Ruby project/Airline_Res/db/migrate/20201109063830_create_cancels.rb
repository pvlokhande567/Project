class CreateCancels < ActiveRecord::Migration[5.0]
  def change
    create_table :cancels do |t|
      t.string :E_Tickit_No
      t.string :integer

      t.timestamps
    end
  end
end
