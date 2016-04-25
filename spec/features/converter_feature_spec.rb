require 'converter.rb'
# As a user
# I want to be able to create an converter
# So I can use it repeatedly.
describe Converter do
  it "let you create a converter to use" do
    celsius2fahrenheit = Converter.new("celsius", "fahrenheit") { |celsius| celsius * 9 / 5 + 32 }
    expect(celsius2fahrenheit.convert(100)).to eq 212
    expect(celsius2fahrenheit.convert(50)).to eq 122
  end
end