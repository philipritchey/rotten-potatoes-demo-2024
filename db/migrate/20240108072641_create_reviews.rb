# frozen_string_literal: true

# create the reviews table
class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.integer :potatoes
      t.references :movie, null: false, foreign_key: true
      t.references :moviegoer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
