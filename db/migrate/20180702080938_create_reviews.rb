class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :bookcard_id
      t.text :title
      t.text :review

      t.timestamps
    end
  end
end
