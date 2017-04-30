class CreateSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :series do |t|
    	t.string :name
    	t.string :description
    	t.string :category
    	t.integer :season
      	t.timestamps
    end
  end
end
