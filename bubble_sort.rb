require "pry-byebug"

class Array
    def swap! (a,b) ## Method for swapping values
       
        self[a], self[b] = self[b], self[a]
        self
    end
end

# for each element in a list
#look at element to direct right
#compare if number is smaller
#if smaller swap the position
# larger leave them

def bubble_sort(array)

    array.reduce {|previous, current|
        # binding.pry
        if array == array.sort
            return array
        else
            if previous > current
                array.swap!(array.index(previous), array.index(previous) + 1) ## Calculating and swapping the index of the previous and next value in the array
                bubble_sort(array)
            elsif previous < current
                previous = current
                current
            else
                nil
            end
        end
        
    }
    return array
end
number_array = [4,3,78,2,0,2]
p bubble_sort(number_array)