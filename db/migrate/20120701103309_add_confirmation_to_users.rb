class AddConfirmationToUsers < ActiveRecord::Migration
  def change
	add_column :users, :password, :password_confirmation
  end
end
