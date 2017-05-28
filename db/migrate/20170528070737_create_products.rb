class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :benefits
      t.text :features
      t.text :notes
      t.text :specification
      t.string :slug

      t.timestamps
    end
    add_index :products, :slug, unique: true
  end
end
