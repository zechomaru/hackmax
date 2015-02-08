class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genero
      t.string :lenguage
      t.string :duration
      t.string :summary
      t.string :classification
      t.string :subtitle
      t.string :ext
      t.date :release_date

      t.timestamps null: false
    end
  end
end
