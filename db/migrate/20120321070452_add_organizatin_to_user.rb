class AddOrganizatinToUser < ActiveRecord::Migration
  def change
    add_column :users, :organization, :string
    add_column :users, :address, :string
    add_column :users, :phone_no, :integer
  end
end
