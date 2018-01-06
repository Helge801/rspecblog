class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.text :title
      t.text :body
      t.text :image

      t.timestamps
    end
  end
end
