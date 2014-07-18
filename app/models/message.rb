class Message < ActiveRecord::Base

  belongs_to :user
  belongs_to :account

  validates :body, presence: true

  before_validation :link_account

  private

  def link_account
    self.account = self.user.try(:account)
  end

end
