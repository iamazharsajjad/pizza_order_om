class Order < ApplicationRecord
	has_many :orderlists
	has_many :pizza, through: :orderlists 
end
