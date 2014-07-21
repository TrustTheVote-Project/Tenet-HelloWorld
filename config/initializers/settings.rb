require 'account'

# we reopen account class to add setting support
class Account
  include RailsSettings::Extend
end

# max message length
Settings.defaults[:message_length] = 140
