class AddAttendanceStripe < ActiveRecord::Migration[7.1]
  def change
    add_column :attendances, :stripe_id, :string
  end
end
