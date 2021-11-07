require 'rails_helper'

describe "Author model", type: :model do

  first_name = "Alan"
  last_name = "Turing"
  homepage = "http://wikipedia.org/Alan_Turing"  
  author = Author.new(first_name, last_name, homepage)

  it "should have a first name, last name and homepage variable" do
    expect(author.first_name).to eq(first_name)
    expect(author.last_name).to eq(last_name)
    expect(author.homepage).to eq(homepage)
  end

  it "should have a name method" do
    expect(author.name).to eq(first_name + " " + last_name)
  end
end