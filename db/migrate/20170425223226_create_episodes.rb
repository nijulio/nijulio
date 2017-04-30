class CreateEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :episodes do |t|
		t.string :name
    	t.string :description
    	t.string :series
    	t.integer :season
    	t.integer :episode_number
      	t.timestamps
    end
  end
end
