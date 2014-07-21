class AccountHooks

  # Called after the account is saved
  def self.after_create(account)
    # initialize account with the welcome message
    account.settings.welcome_message = I18n.t('welcome_message')

    # create a welcome message
    admin = account.users.first
    msg = Message.create(user: admin, body: account.settings.welcome_message)
    account.settings.welcome_message_id = msg.id
  end

end
