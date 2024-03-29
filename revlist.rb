
class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        @data = LinkedListNode.new(value, @data)
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        last = @data.value
        @data = @data.next_node
        last
    end

end


######################################
    # Working revlist method


 # def reverse_list(list)
 #    # ADD CODE HERE
 #        stack = Stack.new
 #        while list
 #            stack.push(list.value)
 #            list = list.next_node
 #        end

 #        return stack.data

 #    end
####################################

def reverse_list(list, previous = nil)   
    if list
        holder = list.next_node
        list.next_node = previous
        reverse_list(holder, list)
    end
end
# def reverse_list(list, previous=nil)
#   if list
#     next_node = list.next_node
#     list.next_node = previous
#     reverse_list(next_node, list)
#   end
# end




def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
reverse_list(node3)
puts "-------------------------"
print_values(node1)


# print_values(stack)

# puts "-------"

# revlist = stack.reverse_list(stack)

# print_values(revlist)



# ///////////////////////////////
# class LinkedListNode
#   attr_accessor :value, :next_node

#   def initialize(value, next_node=nil)
#     @value = value
#     @next_node = next_node
#   end
# end

# def print_values(list_node)
#   if list_node
#     print "#{list_node.value} --> "
#     print_values(list_node.next_node)
#   else
#     print "nil\n"
#     return
#   end
# end



# print_values(node3)







