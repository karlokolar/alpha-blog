require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  def setup
    @category = Category.new(name: "atheism")
  end

  test "Category should be valid" do
    assert @category.valid?
  end

  test "Name should be present" do
    @category.name = " "
    assert_not @category.valid?
  end

  test "Name should be unique" do
    @category.save
    category2 = Category.new(name: "atheism")
    assert_not category2.valid?
  end

  test "Name should not be too long" do
    @category.name = "k" * 25
    assert_not @category.valid?
  end

  test "Name should not be too short" do
    @category.name = "k" * 3
    assert_not @category.valid?
  end

end