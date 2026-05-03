class CreateElements < ActiveRecord::Migration[8.0]
  def change
    create_table :elements do |t|
      t.integer :atomic_number
      t.string :symbol
      t.string :name
      t.integer :xpos
      t.integer :ypos
      t.string :category
      t.decimal :melt
      t.decimal :boil

      t.timestamps
    end
    add_index :elements, :atomic_number
  end
end
