class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :name
      t.string :URL
      t.string :user_ID
      t.string :pass

      t.timestamps
    end
  end
end
