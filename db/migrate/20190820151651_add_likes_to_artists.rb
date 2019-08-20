class AddLikesToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :likes, :integer
  end
end
