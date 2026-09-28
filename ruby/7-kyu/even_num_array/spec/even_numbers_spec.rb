require_relative "../even_numbers"

describe "Even numbers in array" do
  it "Basic tests" do
    expect(even_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9], 3)).to eq([4, 6, 8])
    expect(even_numbers([1, 2], 1)).to eq([2])
    expect(even_numbers([-22, 5, 3, 11, 26, -6, -7, -8, -9, -8, 26], 2)).to eq([-8, 26])
    expect(even_numbers([6, -25, 3, 7, 5, 5, 7, -3, 23], 1)).to eq([6])
  end
end
