class Array

    def my_uniq
        self.map { |ele| ele }
    end


    def two_sum
        new_arr = []
        self.each_with_index do |ele1, id1|
            self.each_with_index do |ele2, id2|
                if id2 > id1 
                    new_arr << [id1,id2] if ele1 + ele2 == 0
                end
            end
        end
        new_arr
    end

    def my_transpose 
        new_arr = Array.new(self.length){Array.new}
        i = 0
        while i < self[0].length
            self.each {|sub| new_arr[i] << sub[i]}
            i += 1
        end
        new_arr
    end

    def stock_prices
        answer = []
        temp = 0
        self.each_with_index do |ele1, idx1|
            self.each_with_index do |ele2, idx2|
                if idx2 > idx1
                    if ele2 - ele1 > temp
                        temp = ele2 - ele1
                        answer = [idx1, idx2]
                    end
                end
            end
        end
        return answer
    end


end

class TowersOfHanoi

end