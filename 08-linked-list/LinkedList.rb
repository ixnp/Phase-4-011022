require 'pry'
# x Write the question down and confirm your assumptions 
#Implement a Linked List with a method that inserts a node and a method that prints the value of every node.
#Q: Is this a singly Linked List
#Q: is this list circular 
# 'a', 'b', 'c', 'd'
# - Write out/explain steps for the solution before coding 
# A Singly Linked List List like object that is made of nodes. Each node has a next pointer and a value.
# Two classes A node class and a LinkList class. 
# - Node class will have the next and the value
# - Link List class will have a head value
# - insert method 
# insert takes a value as an argument 
# Create a new node from the paramter passed into insert
# Assign the value of the current head to the new_node.next_node
# Assign the value of head to the new node
# print
# Starting at the head,
# current = self.head
# create a while loop, while current != nil
# puts current.value
# current = current.next_node



# and print value and go for next 
# until the node is nil





 
# - Write out/explain steps for the solution before coding 
# - Code out solution 
# - Run test case examples 
# - Give Big - O

class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end 

end 

class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end 

  def insert(value) 
    new_node = Node.new(value)
    new_node.next_node = @head
    @head = new_node
  end 

  def print 
    current = self.head
    while current 
      puts current.value 
      current = current.next_node
    end 
  end 

  def append_to_end(value)
    new_node = Node.new(value) 
    
    current = self.head
    while current.next_node
      current = current.next_node
    end 
    current.next_node = new_node
  end 
end 

LL = LinkedList.new
LL.insert('a')
LL.insert('b')
LL.insert('c')
LL.insert('d')
# n1 = Node.new('a')
# n2 = Node.new('b', n1)

# LL.head = n2


binding.pry

