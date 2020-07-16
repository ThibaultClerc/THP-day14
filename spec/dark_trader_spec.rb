require_relative "../lib/dark_trader"

describe "The dark_trader method" do
  it "should not be nil." do
    expect(dark_trader).not_to be_nil
  end
  it "should be an array." do
    expect(dark_trader).to be_a_kind_of(Array)
  end
  it "should be 200 values long." do
    expect(dark_trader.length).to be === 200
  end
end

