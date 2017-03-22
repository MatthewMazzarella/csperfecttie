class CreateHomepages < ActiveRecord::Migration[5.0]
  def change
    create_table :homepages do |t|
      t.string :name
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
