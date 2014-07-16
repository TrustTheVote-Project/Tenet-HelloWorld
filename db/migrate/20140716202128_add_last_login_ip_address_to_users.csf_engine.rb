# This migration comes from csf_engine (originally 20140716200854)
class AddLastLoginIpAddressToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_login_from_ip_address, :string
  end
end
