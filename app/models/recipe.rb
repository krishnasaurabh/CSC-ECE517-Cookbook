class Recipe < ActiveRecord::Base
  #attr_accessible :description, :instructions, :title, :category_id
  belongs_to :category

  #attr_accessor :title,:description,:instructions
  validates :title, :presence => true
  validates :description, :presence => true
  validates :instructions, :presence => true
  #validates :category_id, :presence => true
end
