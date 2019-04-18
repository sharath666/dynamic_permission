class Category < ApplicationRecord
	has_many :model_lists
	has_many :permissions
end
