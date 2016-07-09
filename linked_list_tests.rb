require './linked_list'

def print_stats(list)
  puts "The size is: #{list.size}"
  puts "The head is: #{list.head}"
  puts "The tail is: #{list.tail}"
end

list = LinkedList.new
puts "Attempt to pop"
list.pop
puts
puts "Attempt to find index of the node of value 1"
puts "Does the list contain 1? #{list.contains?(1)}"
puts "The index of the node with value of 1 is: #{list.find(1)}"
puts
puts "Insert a node at index 0 with a value of 5"
list.insert_at(0,5)
puts list.to_s
print_stats(list)
puts
puts "Append a node with value of 1"
list.append(1)
puts list.to_s
print_stats(list)
puts
puts "Prepend a node with value of 4"
list.prepend(4)
puts list.to_s
print_stats(list)
puts
puts "Attempt to find index of the node of value 4"
puts "Does the list contain 4? #{list.contains?(4)}"
puts "The index of the node with value of 4 is: #{list.find(4)}"
puts
puts "Insert a node at index 1 with a value of 3"
list.insert_at(1,3)
puts list.to_s
print_stats(list)
puts
puts "Insert a node at index 3 with a value of 7"
list.insert_at(3,7)
puts list.to_s
print_stats(list)
puts
puts "Pop"
list.pop
puts list.to_s
print_stats(list)
puts
puts "Remove node at index 1"
list.remove_at(1)
puts list.to_s
print_stats(list)
puts
puts "Remove node at index 0"
list.remove_at(0)
puts list.to_s
print_stats(list)
puts
puts "Remove node at index 6"
list.remove_at(6)
puts list.to_s
print_stats(list)
puts
puts "Remove node at index 1"
list.remove_at(1)
puts list.to_s
print_stats(list)
