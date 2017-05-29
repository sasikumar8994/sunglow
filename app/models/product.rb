class Product < ApplicationRecord
  paginates_per 10
  has_many :pictures
end
