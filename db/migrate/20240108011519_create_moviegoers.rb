class CreateMoviegoers < ActiveRecord::Migration[7.1]
  def change
    create_table :moviegoers do |t|
      t.string :email
      t.string :name

      t.timestamps
    end
    add_index :moviegoers, :email, unique: true
    add_index :moviegoers, :name
  end
end
