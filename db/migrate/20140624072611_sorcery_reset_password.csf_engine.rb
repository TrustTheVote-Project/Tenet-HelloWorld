# This migration comes from csf_engine (originally 20140620104411)
class SorceryResetPassword < ActiveRecord::Migration
  def change
    add_column :users, :reset_password_token, :string, :default => nil
    add_column :users, :reset_password_token_expires_at, :datetime, :default => nil
    add_column :users, :reset_password_email_sent_at, :datetime, :default => nil
    add_index  :users, :reset_password_token
  end
end
