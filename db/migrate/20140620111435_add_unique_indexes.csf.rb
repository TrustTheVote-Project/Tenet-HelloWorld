# This migration comes from csf (originally 20140620110642)
class AddUniqueIndexes < ActiveRecord::Migration
  def change
    add_index :csf_accounts, :name, unique: true
    add_index :csf_users, :login, unique: true
  end
end
