class Link < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :last_update_user, :string
  end
end
