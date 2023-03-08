require_relative "../digit_count"

RSpec.describe "Digit count::" do
  it "returns the count of digits present in the k*k" do
    expect(nb_dig(11011, 2)).to eq(9481)
    expect(nb_dig(12224, 8)).to eq(7733)
    expect(nb_dig(11549, 1)).to eq(11905)
  end
end
$r = Random.new

describe("nb_dig") do
  it("Basic tests") do
    Test.assert_equals(nb_dig(5750, 0), 4700)
    Test.assert_equals(nb_dig(11011, 2), 9481)
    Test.assert_equals(nb_dig(12224, 8), 7733)
    Test.assert_equals(nb_dig(11549, 1), 11905)
    Test.assert_equals(nb_dig(14550, 7), 8014)
    Test.assert_equals(nb_dig(8304, 7), 3927)
    Test.assert_equals(nb_dig(10576, 9), 7860)
    Test.assert_equals(nb_dig(12526, 1), 13558)
    Test.assert_equals(nb_dig(7856, 4), 7132)
    Test.assert_equals(nb_dig(14956, 1), 17267)
    Test.assert_not_equals(nb_dig(14956, 1), -1)
  end
end

def nbdig1287_sol(n, d)
  k = 0
  cnt = 0
  d = d.to_s
  while k <= n
    a = (k * k).to_s.count d.to_s
    if a > 0
      cnt += a
    end
    k += 1
  end
  cnt
end

describe("Random Tests") do
  i = 0
  while i < 100
    n = $r.rand(2000..15000)
    d = $r.rand(0..9)
    Test.assert_equals(nb_dig(n, d), nbdig1287_sol(n, d))
    i += 1
  end
end
