class CreateConversions < ActiveRecord::Migration[5.1]
  def change
    create_table :conversions do |t|
      t.integer :input_number
      t.integer :base

      t.timestamps
    end
  end
end
