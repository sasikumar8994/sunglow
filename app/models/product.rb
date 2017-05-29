class Product < ApplicationRecord
  paginates_per 10
  has_many :pictures
  accepts_nested_attributes_for :pictures, reject_if: :all_blank, allow_destroy: true
end
