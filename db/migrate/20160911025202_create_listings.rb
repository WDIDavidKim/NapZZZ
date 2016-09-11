class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :content
      t.string :image
      t.string :location

      t.timestamps
    end
  end
end
