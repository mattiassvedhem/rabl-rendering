require 'test_helper'

module IsolatedEngine
  class NestedItemsControllerTest < ActionController::TestCase
    setup do
      @nested_item = nested_items(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:nested_items)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create nested_item" do
      assert_difference('NestedItem.count') do
        post :create, nested_item: {  }
      end
  
      assert_redirected_to nested_item_path(assigns(:nested_item))
    end
  
    test "should show nested_item" do
      get :show, id: @nested_item
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @nested_item
      assert_response :success
    end
  
    test "should update nested_item" do
      put :update, id: @nested_item, nested_item: {  }
      assert_redirected_to nested_item_path(assigns(:nested_item))
    end
  
    test "should destroy nested_item" do
      assert_difference('NestedItem.count', -1) do
        delete :destroy, id: @nested_item
      end
  
      assert_redirected_to nested_items_path
    end
  end
end
