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

  context "random is stubbed to 7" do
    it "returns the seventh line of ten_lines.txt (7)" do
      Random.stub(:rand).and_return(7)

      file_path = File.join(File.dirname(__FILE__), '../test_files/ten_lines.txt')
      random_line(file_path).should == "8"
    end
  end
end

describe "random_line_one_pass" do
  it "returns nil when the file doesn't exist" do
    random_line_one_pass("some-random-file").should == nil
  end

  it "returns \"\" when the file is empty" do
    file_path = File.join(File.dirname(__FILE__), '../test_files/empty.txt')
    random_line_one_pass(file_path).should == ""
  end

  context "random is stubbed to 0" do
    it "returns the seventh line of ten_lines.txt (7)" do
      Random.stub(:rand).and_return(0)

      file_path = File.join(File.dirname(__FILE__), '../test_files/ten_lines.txt')
      random_line_one_pass(file_path).should == "1"
    end
  end
end
