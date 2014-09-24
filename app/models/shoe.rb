class Shoe < ActiveRecord::Base
	validates :style, :presence => :true
	validates :color, :presence => :true
	belongs_to :brand 
end