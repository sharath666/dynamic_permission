require 'test_helper'

class ModelListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @model_list = model_lists(:one)
  end

  test "should get index" do
    get model_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_model_list_url
    assert_response :success
  end

  test "should create model_list" do
    assert_difference('ModelList.count') do
      post model_lists_url, params: { model_list: { name: @model_list.name } }
    end

    assert_redirected_to model_list_url(ModelList.last)
  end

  test "should show model_list" do
    get model_list_url(@model_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_model_list_url(@model_list)
    assert_response :success
  end

  test "should update model_list" do
    patch model_list_url(@model_list), params: { model_list: { name: @model_list.name } }
    assert_redirected_to model_list_url(@model_list)
  end

  test "should destroy model_list" do
    assert_difference('ModelList.count', -1) do
      delete model_list_url(@model_list)
    end

    assert_redirected_to model_lists_url
  end
end
