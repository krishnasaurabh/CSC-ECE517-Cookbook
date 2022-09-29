class Category < ActiveRecord::Base
  #attr_accessible :name
  has_many :recipes

  #attr_accessor :name
  validates :name, :presence => true
end
