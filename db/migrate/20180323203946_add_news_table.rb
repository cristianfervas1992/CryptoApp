class AddNewsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.string :source
      t.string :source_img
      t.string :language
      t.string :title
      t.string :url
      t.text :body
      t.integer :published_on
      t.string :image_url
      t.string :categories
      t.text :tags
      t.timestamps
    end
  end
end
