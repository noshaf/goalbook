class AddNameAndTagToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :tag, :string
  end
end