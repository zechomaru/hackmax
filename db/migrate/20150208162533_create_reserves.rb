class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|
      t.string :status
      t.references :show, index: true
      t.references :seat, index: true

      t.timestamps null: false
    end
    add_foreign_key :reserves, :shows
    add_foreign_key :reserves, :seats
  end
end
