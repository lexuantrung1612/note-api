class AddAliasNameToNote < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :alias_name, :string, index: true
  end
end
