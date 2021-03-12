class Map

    def initialize(array)
        @array = array
    end


    def set(key,value)
        @array << [key,value]
    end 

    def get(key,value)
        @array.each do |ele|
           return [key,value] if ele[0] == key
        end 
    end

    def delete(key,value)
        array = []
        @array.each do |ele|
            if ele[0] != key
                array << ele
            end 
        end 
        array 
    end

    def show
        @array[0]
    end 

end 

map = Map.new([["Lebron","basketball"], ["Messi", "soccer"], ["DDimes", "football"]])
p map.set("Jack","sailing")
p map.get("Messi", "soccer")
p map.show 
p map.delete("DDimes","football")