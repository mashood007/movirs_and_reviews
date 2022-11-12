class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.integer :year
      t.references :director, null: false
      t.references :location, null: false

      t.timestamps
    end
  end
end
