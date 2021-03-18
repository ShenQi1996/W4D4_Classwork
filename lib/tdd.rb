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
    attr_reader :stacks
    def initialize(num_disc, num_stacks)
        @stacks = Array.new(num_stacks){Array.new}
        build_game(num_disc)
        @answer = @stacks[0].dup
    end

    def move_disc(start_pos, end_pos)
        if !start_pos.between?(0,2) || !end_pos.between?(0,2)
            raise "Out of bounds" 
        elsif @stacks[start_pos].empty?
            raise "Invalid move" 
        elsif !@stacks[end_pos].empty? && @stacks[start_pos].last > @stacks[end_pos].last
            raise "Disc too big" 
        else
            disc = @stacks[start_pos].pop
            @stacks[end_pos] << disc
        end
    end

    def won?
      @answer == @stacks[-1]
    end

    def display 
        stacks.each_with_index do |subarr,i|
            puts "#{i}-#{subarr}" 
        end
        return nil
    end

    def get_input
        puts "Which stack would you like to move from (start from 0)"
        input = gets.chomp.to_i
        puts "Which stack would you like to move to (start from 0)"
        input2 = gets.chomp.to_i
        [input, input2]
    end
    private 

    def build_game(num)
        (1..num).to_a.reverse.each do |n|
            @stacks[0] << n
        end
    end

 

end