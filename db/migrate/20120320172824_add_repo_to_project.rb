class AddRepoToProject < ActiveRecord::Migration
  def change
    add_column :projects, :repo, :string
  end
end
