class CreateBookcards < ActiveRecord::Migration[5.1]
  def change
    create_table :bookcards do |t|
      t.text :title
      t.text :author
      t.integer :price
      t.text :publisher
      t.integer :evaluation
      t.text :review

      t.timestamps
    end
  end
end
