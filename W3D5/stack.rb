class Stack

    def initialize(array)
        @array = array 
    end

    def push(el)
        @array.push(el)
    end

    def pop
        @array.pop
    end 

    def peek
        @array.first
    end 

end 

stack = Stack.new([9,2,3,"hello", 5, "Jack"])

p stack.push("yoo")
p stack.pop 
p stack.peek

