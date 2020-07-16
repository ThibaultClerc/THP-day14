require_relative "../lib/mairie_christmas.rb"

describe "The final_array_of_hashes method" do
  it "should not be nil." do
    expect(final_array_of_hashes(get_townhall_urls("https://www.annuaire-des-mairies.com/95/avernes.html"), "https://www.annuaire-des-mairies.com/95/avernes.html")).not_to be_nil
  end
  it "should be an array." do
    expect(final_array_of_hashes(get_townhall_urls("https://www.annuaire-des-mairies.com/95/avernes.html"), "https://www.annuaire-des-mairies.com/95/avernes.html")).to be_a_kind_of(Array)
  end
  it "should be 185 values long." do
    expect(final_array_of_hashes(get_townhall_urls("https://www.annuaire-des-mairies.com/95/avernes.html"), "https://www.annuaire-des-mairies.com/95/avernes.html")).length.to be === 185
  end
end