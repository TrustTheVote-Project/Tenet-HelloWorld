class RemoveApoStates < ActiveRecord::Migration
  def change
    State.where(code: [ 'AE', 'AA', 'AP' ]).delete_all
  end
end
