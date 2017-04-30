class Roles < ActiveRecord::Migration[5.0]
  def change
    add_column :Users, :admin, :boolean, default: false
    add_column :Users, :visitor, :boolean, default: true
  end
end
