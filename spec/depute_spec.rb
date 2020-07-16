require_relative "../lib/depute.rb"

describe "The final_array_of_hashes method" do
  it "should not be nil." do
    expect(final_array_of_hashes).not_to be_nil
  end
  it "should be an array." do
    expect(final_array_of_hashes).to be_a_kind_of(Array)
  end
  it "should be 573 values long." do
    expect(final_array_of_hashes.length).to be === 573
  end
end