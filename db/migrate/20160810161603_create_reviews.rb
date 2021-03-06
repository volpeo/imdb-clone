class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.string :author
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
