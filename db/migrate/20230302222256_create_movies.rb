class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.text:description
      t.integer :user_id
      t.string :movie_url
      t.boolean :originally_fetched
    end
  end
end
