require 'test_helper'

class RecipeCreationFlowTest < ActionDispatch::IntegrationTest
  test "recipe creation flow should happen with user input" do

    visit '/recipes/new'

    fill_in 'Title',:with => "Some recipe name"
    fill_in 'Description',:with => "Some recipe description"
    fill_in 'Instructions',:with => "Some recipe instructions"
    select "Some_Category",:from => "Category"

    click_button 'Create Recipe'

    assert page.has_content?("Recipe was successfully created.")
    assert page.has_content?("Some recipe name")
    assert page.has_content?("Some recipe description")
    assert page.has_content?("Some recipe instructions")

  end
end