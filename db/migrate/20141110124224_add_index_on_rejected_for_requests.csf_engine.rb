# This migration comes from csf_engine (originally 20141110092042)
class AddIndexOnRejectedForRequests < ActiveRecord::Migration
  def change
    add_index :registration_requests, :rejected
  end
end
