class CreateActorsMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :actors_movies do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :actor, null: false, foreign_key: true
      t.string :character

      t.timestamps
    end
  end
end
