require "tdd"
require "rspec"

describe Array do
    subject(:arr) {Array.new([1,2,3,4,5])}

    describe "#my_uniq" do
        it "should take in an array and return a new array" do
            expect(arr.my_uniq).not_to be(arr)
        end
    end

    describe "#two_sum" do
        it "finds all pairs of positions where the elements sum to zero" do
            arr = [-1, 0, 2, -2, 1]
            expect(arr.two_sum).to eq([[0,4],[2,3]])
        end
    end

    describe "#my_transpose" do 
        it "return a new array that switch its rows and col " do
            rows = [[1,2,3], [4,5,6], [7,8,9]]
            expect(rows.my_transpose).to eq([[1,4,7],[2,5,8],[3,6,9]])
        end
    end

    describe "stock_prices" do
        it "takes an array of stock prices and outputs the most profitable pair of days" do
            stocks = [50,56,67,49,76,34,47]
            expect(stocks.stock_prices).to eq([3,4])
        end
    end
end

describe TowersOfHanoi do
    subject(:game) {TowersOfHanoi.new(4,3)}
    describe "#initialize" do
        it "should create 3 arrays" do 
            expect(game.stacks.length).to eq(3)
        end

        it "should add num of disc to stacks[0]" do 
            expect(game.stacks[0]).to eq([4,3,2,1])
        end
    end

    describe "#move_disc" do
        it "should move disc from one stack to another" do
            game.move_disc(0,2)
            expect(game.stacks[2]).to eq([1])
        end

        it "should raise error if invalid move" do
            game.move_disc(0,2)
            expect {game.move_disc(1,0)}.to raise_error("Invalid move")
            expect {game.move_disc(0,2)}.to raise_error("Disc too big")
            expect {game.move_disc(-1,0)}.to raise_error("Out of bounds")
        end
    end

    describe "#play" do
        it "should loop prompt_user, move_disc, win?" do
            
        end
    end

    describe "#won?" do
        it "should return boolean of whether the last stack is filled up in order" do
            game.stacks[2] += [4,3,2,1]
            expect(game.won?).to be true
        end
    end


end
