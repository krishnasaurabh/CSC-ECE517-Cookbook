require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "category should have name" do
    category = Category.new
    assert_not category.save
  end

  test "category with name should be saved" do
    category = Category.new
    category.name = "Some title"
    assert category.save
  end

end
