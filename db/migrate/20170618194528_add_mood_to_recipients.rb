class AddMoodToRecipients < ActiveRecord::Migration[5.0]
  def change
    add_column :recipients, :mood, :string, default: '5/5'
  end
end
