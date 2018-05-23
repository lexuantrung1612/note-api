class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :title, index: true
      t.text :content, index: true
      t.string :group, index: true
      t.string :views, default: "0"
      t.string :likes, default: "0"

      t.timestamps
    end
  end
end
