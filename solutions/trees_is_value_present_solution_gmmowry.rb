# Binary Search Tree generator code

class Node
    attr_accessor :value, :left_child, :right_child
    def initialize(value)
        @value = value
        @left_child = nil
        @right_child = nil
    end
end


def make_BST(size)
    nums = (0..size).to_a.shuffle
    root = Node.new(nums.shift)
    while !nums.empty?
        add_node(root, Node.new(nums.shift))
    end
    return root
end

def add_node(root, node)
    if node.value < root.value
        if root.left_child == nil
            # puts "root value: #{root.value} has left child #{node.value}"
            root.left_child = node
            return
        else
            add_node(root.left_child, node)
        end
    else
        if root.right_child == nil
            root.right_child = node
            # puts "root value: #{root.value} has right child #{node.value}"
            return
        else
            add_node(root.right_child, node)
        end
    end
    return root
end


# BST is_value_present? solution

class Node
    attr_accessor :value, :left_child, :right_child
    def initialize(value)
        @value = value
        @left_child = nil
        @right_child = nil
    end
end

root = Node.new(8)
root.left_child = Node.new(3)
root.right_child = Node.new(10)
root.left_child.left_child = Node.new(1)
root.left_child.right_child = Node.new(6)
root.left_child.right_child.left_child = Node.new(4)
root.left_child.right_child.right_child = Node.new(7)

def is_value_present(root, value)
    return false if root == nil

    if root.value == value
        return true
    elsif root.value > value
        return is_value_present(root.left_child, value)
    else
        return is_value_present(root.right_child, value)
    end

end

#TESTS
p is_value_present(root, 8)
p is_value_present(root, 7)
p is_value_present(root, 4)
p is_value_present(root, 11)



