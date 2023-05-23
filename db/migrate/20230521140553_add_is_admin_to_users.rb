class AddIsAdminToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :isadmin, :boolean
    add_column :users, :first_name, :text
    add_column :users, :last_name, :text
  end
end
