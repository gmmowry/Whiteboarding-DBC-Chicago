class Node
  attr_accessor :value, :next
  def initialize(value)
    @value = value
  end
end


class LinkedList
  attr_accessor :head, :size

  # initially, there is no 'head' and
  # the size of the list is 0
  def initialize
    @head = nil
    @size = 0
  end

  def [](position)
    current_node = @head
    counter = 0
    until counter == position
      current_node = current_node.next
      counter += 1
    end
    current_node
  end

  def insert(node = Node.new, position)
    node.next = self[position]
    if position == 0
      self.head = node
    else
      self[position - 1].next = node
    end
  end

  def remove(position)
    removed = self[position]
    if position == 0
      @head = @head.next if @head != nil
    else
      self[position - 1].next = self[position + 1]
    end
    removed
  end

end




# Another way of solving 'insert' and 'remove'

  # if index is zero, due bubble sorty thing
  # to re-assign a new head. otherwise, loop
  # through to the index before desired, set
  # new_node.next to current.next, set current.next
  # to new_node
  def add_at_index(value, index)
    bounds_check(index)
    new_node = Node.new(value)

    if index == 0
      dummy_node = @head
      @head = new_node
      @head.next = dummy_node
    else
      current = @head
      counter  = 0
      while counter < index
        if counter == index - 1
          new_node.next = current.next
          current.next = new_node
        end
        current = current.next
        counter += 1
      end
    end
    @size += 1
  end

  # if we remove the head, we simply assign
  # head to head's reference. otherwise, set our current.next
  # to current.next.next, skipping over the no longer
  # needed node
  def remove_at_index(index)
    bounds_check(index)

    if index == 0
      @head = @head.next
    else
      current = @head
      counter = 0
      while counter < index
        current.next = current.next.next || nil if counter == index - 1
        counter += 1
      end
    end
    @size -= 1
  end
