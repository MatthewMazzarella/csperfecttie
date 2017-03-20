class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image_url
      t.string :category
      t.string :brand
      t.integer :quantity
      t.string :color

      t.timestamps
    end
  end
end
