class CreateAttendances < ActiveRecord::Migration[7.1]
  def change
    create_table :attendances do |t|
      t.belongs_to :event, null: false, foreign_key: true
      t.belongs_to :participant, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
