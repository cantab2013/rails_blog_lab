class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :author
      # t.references :pin -- no need to put this!
      t.timestamps
    end
  end
end
