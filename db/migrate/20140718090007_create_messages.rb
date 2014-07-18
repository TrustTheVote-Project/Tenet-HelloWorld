class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to :account, index: true
      t.belongs_to :user,    index: true
      t.string     :body

      t.timestamps
    end
  end
end
