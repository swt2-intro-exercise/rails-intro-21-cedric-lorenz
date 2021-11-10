require 'rails_helper'

describe "Author model", type: :model do

  first_name = "Alan"
  last_name = "Turing"
  homepage = "http://wikipedia.org/Alan_Turing"  
  author = Author.new(first_name: first_name, last_name: last_name, homepage: homepage)

  it "should have a first name" do
    expect(author.first_name).to eq(first_name)
  end

  it "should have a last name" do
    expect(author.last_name).to eq(last_name)
  end

  it "should have a homepage" do
    expect(author.homepage).to eq(homepage)
  end

  it "should have a name method which returns the full name" do
    expect(author.name).to eq(first_name + " " + last_name)
  end

  it "should invalidate an author which has fields with the value nil" do
    expect(@author).to_not be_valid
  end

   it "should validate an author whose fields are all not nil" do
    expect(author).to be_valid
  end
end