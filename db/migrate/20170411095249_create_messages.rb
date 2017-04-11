class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.integer :status
      t.text :body
      t.string :recipient

      t.timestamps
    end
  end
end
