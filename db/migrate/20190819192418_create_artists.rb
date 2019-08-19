class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.string :biography
      t.string :imageUrl
      t.belongs_to :label, foreign_key: true

      t.timestamps
    end
  end
end
