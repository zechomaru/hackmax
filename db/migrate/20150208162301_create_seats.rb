class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.references :theater, index: true

      t.timestamps null: false
    end
    add_foreign_key :seats, :theaters
  end
end
