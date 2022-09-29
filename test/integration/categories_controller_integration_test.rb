require 'test_helper'

class CategoriesControllerIntegrationTest < ActionDispatch::IntegrationTest

  def setup
    @category = categories(:one)
  end

  test "should create category" do
    get '/categories/new'

    assert_response :success

    assert_difference 'Category.count' do
      post '/categories', category: {name: "New Category"}
    end

    assert_equal '/categories',path
  end

  test "should get index" do
    get '/categories'
    assert_response :success
    assert_not_nil assigns(:categories)
  end

  test "should get new" do
    get '/categories/new'
    assert_response :success
  end

  test "should show category" do
    get '/categories/' + @category.id.to_s
    assert_response :success
  end

  test "should get edit" do
    get '/categories/' + @category.id.to_s + "/edit"
    assert_response :success
  end

  test "should update category" do
    put '/categories/' + @category.id.to_s, category: @category.attributes
    assert_redirected_to category_path(assigns(:category))
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete '/categories/' + @category.id.to_s
    end

    assert_redirected_to categories_path
  end

  test "should use layout" do
    get '/categories'
    assert_response :success
    assert_select 'title', "Online Cookbook"
  end

end