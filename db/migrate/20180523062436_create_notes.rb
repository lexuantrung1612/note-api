class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.string :group
      t.string :views
      t.string :likes

      t.timestamps
    end
  end
end
