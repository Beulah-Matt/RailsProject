class CreateMovieCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_collections do |t|
      t.string :user_id
      t.string :movie_id

      t.timestamps
    end
  end
end
