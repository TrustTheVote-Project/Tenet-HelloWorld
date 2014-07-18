require 'rails_helper'

RSpec.describe Message, :type => :model do

  it { should validate_presence_of :body }
  it { should belong_to :user }
  it { should belong_to :account }

  it 'should link the message to an account' do
    m = create(:message)
    expect(m.account).to eq m.user.account
  end

end
