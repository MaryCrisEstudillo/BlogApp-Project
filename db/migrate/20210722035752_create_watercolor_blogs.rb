class CreateWatercolorBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :watercolor_blogs do |t|
      t.string :title
      t.text :description
      t.datetime :created
      t.string :image

      t.timestamps
    end
  end
end
