class Confirmacion < ActiveRecord::Migration[5.0]
  def up
  	add_column :users, :confirmation_token, :string
  	add_column :users, :confirmed_at, :datetime
  	add_column :users, :confirmation_sent_at, :datetime

  	add_index :users, :confirmation_token, unique: true

  	execute("UPDATE users SET confirmed_at = date('now')")
  end

  def down
  	remove_columns :users, :confirmation_token, :confirmed_at, :confirmation_sent_at
  end
end