#require 'pry'

gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/node'

class NodeTest < Minitest::Test

  def test_data_output
    node = Node.new("plop")
    
    assert_equal "plop", node.data
  end

  def test_next_node_is_nil
    node = Node.new("boop")

    assert_equal nil, node.next_node
  end

end
