require 'test_helper'

class MemorizationpartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @memorizationpart = memorizationparts(:one)
  end

  test "should get index" do
    get memorizationparts_url
    assert_response :success
  end

  test "should get new" do
    get new_memorizationpart_url
    assert_response :success
  end

  test "should create memorizationpart" do
    assert_difference('Memorizationpart.count') do
      post memorizationparts_url, params: { memorizationpart: { name: @memorizationpart.name, students_id: @memorizationpart.students_id } }
    end

    assert_redirected_to memorizationpart_url(Memorizationpart.last)
  end

  test "should show memorizationpart" do
    get memorizationpart_url(@memorizationpart)
    assert_response :success
  end

  test "should get edit" do
    get edit_memorizationpart_url(@memorizationpart)
    assert_response :success
  end

  test "should update memorizationpart" do
    patch memorizationpart_url(@memorizationpart), params: { memorizationpart: { name: @memorizationpart.name, students_id: @memorizationpart.students_id } }
    assert_redirected_to memorizationpart_url(@memorizationpart)
  end

  test "should destroy memorizationpart" do
    assert_difference('Memorizationpart.count', -1) do
      delete memorizationpart_url(@memorizationpart)
    end

    assert_redirected_to memorizationparts_url
  end
end
