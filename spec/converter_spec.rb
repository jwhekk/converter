require 'converter.rb'

describe Converter do
  it "lets you create a new converter with 2 arguments and a code block" do
    new_converter = Converter.new("celsius", "fahrenheit") { |celsius| celsius * 9 / 5 + 32}
  end
  it "converts once created" do
    new_converter = Converter.new("celsius", "fahrenheit") { |celsius| celsius * 9 / 5 + 32}
    expect(new_converter.convert(100)).to eq 212
  end
end