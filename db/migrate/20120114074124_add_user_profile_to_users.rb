class AddUserProfileToUsers < ActiveRecord::Migration
  def up
    add_column :users, :username, :string
    add_column :users, :website, :string
    add_column :users, :city, :string
    add_column :users, :intro, :string
    add_column :users, :avatar, :string
    add_column :users, :notified, :boolean
  end

  def down
  	remove_column :users, :username
  	remove_column :users, :website
  	remove_column :users, :city
  	remove_column :users, :intro
  	remove_column :users, :avatar
	remove_column :users, :notified
  end
end
