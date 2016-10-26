class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.text :name
      t.text :genre

      t.timestamps null: false
    end
  end
end
