require "set"

class GraphNode

    attr_accessor :value, :neighbors 

    def initialize(value)
        self.value = value
        self.neighbors = []
    end 

    def neighbors(node)
        self.neighbors << node 
    end 

    def bfs(starting_node, target_value)
        queue = [starting_node]
        visited = Set.new()

        until queue.empty?
            node = queue.shift
            unless visited.include?(node)
                if node == target_value
                    return node 
                else 
                    queue += node.neighbors 
                    visited.add(node)
                end 
            end 
        end
        return nil 
    end 

end 


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

node = GraphNode.new("a")
p node.bfs(a, "b")
