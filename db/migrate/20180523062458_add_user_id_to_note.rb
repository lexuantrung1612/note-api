class AddUserIdToNote < ActiveRecord::Migration[5.1]
  def change
    add_reference :notes, :user_id, foreign_key: true
  end
end
