class AddPurposeToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :purpose, :integer
  end
end
