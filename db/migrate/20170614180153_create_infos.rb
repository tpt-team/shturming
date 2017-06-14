class CreateInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :infos do |t|
      t.text :body
      t.integer :purpose, default: 0

      t.timestamps
    end
  end
end
