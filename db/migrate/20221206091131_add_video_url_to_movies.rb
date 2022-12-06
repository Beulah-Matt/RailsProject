class AddVideoUrlToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :video_url, :string
  end
end
