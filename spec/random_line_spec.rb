require 'rspec'
require_relative '../app/random_line.rb'

describe "random_line" do
  it "returns nil when the file doesn't exist" do
    random_line("some-random-file").should == nil
  end
end
