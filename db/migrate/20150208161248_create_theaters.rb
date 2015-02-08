class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.string :name
      t.float :quantity

      t.timestamps null: false
    end
  end
end
