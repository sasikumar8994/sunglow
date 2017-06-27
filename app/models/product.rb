class Product < ApplicationRecord
  paginates_per 10
  has_many :pictures
  belongs_to :menu
  accepts_nested_attributes_for :pictures, reject_if: :all_blank, allow_destroy: true
  extend FriendlyId
  friendly_id :name, use: :slugged
end
