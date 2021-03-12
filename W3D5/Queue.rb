class Queue

    def initialize(array)
        @array = array
    end 

    def enqueue(el)
        @array.unshift(el)
    end

    def dequeue
        @array.pop 
    end

    def peek
        @array.last 
    end 

end 

que = Queue.new(["Jack", 3, 5, "Cusick", 4, 67])

p que.enqueue("Sam")
p que.dequeue
p que.peek 