require 'rspec'
require 'array_tdd'

describe Array do

  describe "#my_uniq" do
    let(:arr) { [1, 1, 1, 2, 2, 3, 3] }
    it "works succesfully" do
      expect(arr.my_uniq).to eq([1, 2, 3])
    end
  end

  describe "#two_sum" do
    let(:arr) { [-1, 0, 2, -2, 1] }
    it "finds the right indexes" do
      expect(arr.two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe "#my_transpose" do
    let(:arr) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }
    it "transposes the array" do
      expect(arr.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
  end

  describe "#stock_picker" do
    let(:arr) { [3, 2, 1, 4, 5] }
    it "picks the most profitable stock" do
      expect(arr.stock_picker).to eq([2, 4])
    end
  end
end
