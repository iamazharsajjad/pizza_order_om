class Pizza < ApplicationRecord
	has_many :orderlists
	has_many :orders, through: :orderlists
end
