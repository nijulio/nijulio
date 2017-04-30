class Series < ApplicationRecord
	validates :season, presence: true, numericality: { only_integer: true, :greater_than => 0 }
	validates :name, presence: true, allow_blank: false
	validates :description, presence: true, allow_blank: false
	validates :category, presence: true, allow_blank: false
	has_many :episodes
	#belongs_to :category
	#belongs_to :user
          
end
