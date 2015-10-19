require 'rspec'
require_relative '../app/random_line.rb'

describe "random_line" do
  it "returns nil when the file doesn't exist" do
    random_line("some-random-file").should == nil
  end

  it "returns \"\" when the file is empty" do
    file_path = File.join(File.dirname(__FILE__), '../test_files/empty.txt')
    random_line(file_path).should == ""
  end
end
