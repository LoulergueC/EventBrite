class AddAdminToUsers < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :is_admin, type: :boolean, null: false, default: false
  end
end
