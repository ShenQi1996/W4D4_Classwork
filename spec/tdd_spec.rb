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

end