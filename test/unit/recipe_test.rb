require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "recipe should have description,title and instructions" do
    recipe = Recipe.new
    assert_not recipe.save
  end

  test "recipe with description,title,category and instructions should be saved" do
    recipe = Recipe.new
    recipe.title = "some title"
    recipe.category = categories(:one)
    recipe.instructions = "Some instructions"
    recipe.description = "Some description"
    assert recipe.save
  end
end
