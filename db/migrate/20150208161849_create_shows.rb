class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.date :date_show
      t.time :time_show
      t.references :movie, index: true
      t.references :theater, index: true

      t.timestamps null: false
    end
    add_foreign_key :shows, :movies
    add_foreign_key :shows, :theaters
  end
end
