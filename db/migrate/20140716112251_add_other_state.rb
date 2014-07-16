class AddOtherState < ActiveRecord::Migration
  def change
    State.create_with(name: '-- Other --').find_or_create_by(code: 'ZZ')
  end
end
