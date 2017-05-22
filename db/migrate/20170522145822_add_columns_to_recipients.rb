class AddColumnsToRecipients < ActiveRecord::Migration[5.0]
  def change
    add_column :recipients, :first_name, :string
    add_column :recipients, :last_name, :string
    add_column :recipients, :birthday, :date
    add_column :recipients, :gender, :integer
  end
end
