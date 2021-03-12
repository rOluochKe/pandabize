class CreateBicycles < ActiveRecord::Migration[6.0]
  def change
    create_table :bicycles do |t|
      t.string :full_name
      t.text :description
      t.integer :wheel_size
      t.string :rim_color
      t.string :saddle_color
      t.decimal :price
      t.string :image_url

      t.timestamps
    end
  end
end
