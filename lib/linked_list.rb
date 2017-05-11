require 'pry'

require_relative '../lib/node'

class LinkedList

  attr_reader :head

  def initialize
    @head = nil
  end

  def append(sound)
    if @head.nil?
      @head = Node.new(sound)
    else
      current = @head
      until current.next_node.nil?
        current = current.next_node
      end
      current.next_node = Node.new(sound)
    end
    sound
  end

  def count
    if @head.nil?
      counter = 0
    else
      counter = 1
      current = @head
      until current.next_node.nil?
        current = current.next_node
        counter += 1
      end
      counter
    end
  end

  def to_string
    current = @head
    sounds = []
    sounds << @head.data
    until current.next_node.nil?
      current = current.next_node
      sounds << current.data
    end
    sounds.join(" ")
  end

  def prepend(sound)
    hold_head = @head
    @head = Node.new(sound)
    @head.next_node = hold_head
    sound
  end

end
