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

end