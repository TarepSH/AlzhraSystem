require 'test_helper'

class MemorizationpagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @memorizationpage = memorizationpages(:one)
  end

  test "should get index" do
    get memorizationpages_url
    assert_response :success
  end

  test "should get new" do
    get new_memorizationpage_url
    assert_response :success
  end

  test "should create memorizationpage" do
    assert_difference('Memorizationpage.count') do
      post memorizationpages_url, params: { memorizationpage: { name: @memorizationpage.name, students_id: @memorizationpage.students_id } }
    end

    assert_redirected_to memorizationpage_url(Memorizationpage.last)
  end

  test "should show memorizationpage" do
    get memorizationpage_url(@memorizationpage)
    assert_response :success
  end

  test "should get edit" do
    get edit_memorizationpage_url(@memorizationpage)
    assert_response :success
  end

  test "should update memorizationpage" do
    patch memorizationpage_url(@memorizationpage), params: { memorizationpage: { name: @memorizationpage.name, students_id: @memorizationpage.students_id } }
    assert_redirected_to memorizationpage_url(@memorizationpage)
  end

  test "should destroy memorizationpage" do
    assert_difference('Memorizationpage.count', -1) do
      delete memorizationpage_url(@memorizationpage)
    end

    assert_redirected_to memorizationpages_url
  end
end
