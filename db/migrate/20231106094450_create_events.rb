class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.integer :duration
      t.integer :price
      t.string :location
      t.string :picture

      t.timestamps
    end
    add_reference :events, :organizer, foreign_key: { to_table: :users }
  end
end
