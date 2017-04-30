class CorregirSeriesYEpisodios < ActiveRecord::Migration[5.0]
  def change
  	add_column :series, :user, :integer
  	add_column :episodes, :user, :integer
  end
end
