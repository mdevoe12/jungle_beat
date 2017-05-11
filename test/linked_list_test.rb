require 'pry'

gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/linked_list'
require_relative '../lib/node'

class LinkedListTest < Minitest::Test

  def test_node_head
    list = LinkedList.new

    assert_nil list.head
  end

  def test_if_append_works
    list = LinkedList.new

    assert_equal "doop", list.append("doop")
  end

  def test_if_count_works
    list = LinkedList.new
    list.append("doop")

    assert_equal 1, list.count
  end

  def test_if_to_string_works
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal "doop deep", list.to_string
  end

  def test_if_append_additional
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("suu")

    assert_equal "suu", list.head.next_node.next_node.data
  end

  def test_if_prepend
    list = LinkedList.new
    list.prepend("dop")

    assert_equal "dop", list.prepend("dop")
  end

  def test_if_to_string_works
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.prepend("dop")
    
    assert_equal "dop doop deep", list.to_string
  end

end
