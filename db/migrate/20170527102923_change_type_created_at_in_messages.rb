class ChangeTypeCreatedAtInMessages < ActiveRecord::Migration[5.0]
  def change
    change_column :messages, :created_at, :date
  end
end
