require 'test_helper'

class RibbitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ribbit = ribbits(:one)
  end

  test "should get index" do
    get ribbits_url
    assert_response :success
  end

  test "should get new" do
    get new_ribbit_url
    assert_response :success
  end

  test "should create ribbit" do
    assert_difference('Ribbit.count') do
      post ribbits_url, params: { ribbit: { croack: @ribbit.croack, frog_id: @ribbit.frog_id } }
    end

    assert_redirected_to ribbit_url(Ribbit.last)
  end

  test "should show ribbit" do
    get ribbit_url(@ribbit)
    assert_response :success
  end

  test "should get edit" do
    get edit_ribbit_url(@ribbit)
    assert_response :success
  end

  test "should update ribbit" do
    patch ribbit_url(@ribbit), params: { ribbit: { croack: @ribbit.croack, frog_id: @ribbit.frog_id } }
    assert_redirected_to ribbit_url(@ribbit)
  end

  test "should destroy ribbit" do
    assert_difference('Ribbit.count', -1) do
      delete ribbit_url(@ribbit)
    end

    assert_redirected_to ribbits_url
  end
end
