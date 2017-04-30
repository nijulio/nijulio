class Series < ActiveRecord::Migration[5.0]
  def change
    remove_column :series, :user
    add_column :series, :user, :string
  end
end
