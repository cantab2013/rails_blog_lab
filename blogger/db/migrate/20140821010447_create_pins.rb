class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :timeCreated
      t.references :tag
      t.references :post
      t.timestamps
    end
  end
end
