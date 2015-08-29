class Category < ActiveRecord::Base
  has_many :post_catagories
  has_many :categories, through: :post_categories
end